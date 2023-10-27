using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentalReport : DevExpress.XtraReports.UI.XtraReport
    {
        //public RptDepartal(List<DepartalSort> rptdata)

        //DepartmentalReportType[] _ReportType = null;
        public DepartmentalReport(object rptdata, string AFty)
        {
            InitializeComponent();
            //  _ReportType = AReportType;

            xrFty.Text = AFty;
            bsDepart.DataSource = rptdata;


        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            DepartalSort _record = this.GetCurrentRow() as DepartalSort;
            if (_record == null)
                return;

            //xrTableCell29.Text = _record.IsCludeAll.GetValueOrDefault() ? "Y" : "N";
            //xrTableCell30.Text = _record.IsStaffOnly.GetValueOrDefault() ? "Y" : "N";

        }

        private void tcHKHeadSalesOff_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcHKHeadSalesOff.Text = Convert.ToBoolean(this.GetCurrentColumnValue("HKOFFICE")) ? "¡Ì" : "";
        }

        private void tcSLSalesOff_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcSLSalesOff.Text = Convert.ToBoolean(this.GetCurrentColumnValue("SLSALES")) ? "¡Ì" : "";
        }

        private void tcSLFty_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcSLFty.Text = Convert.ToBoolean(this.GetCurrentColumnValue("SLMAIN")) ? "¡Ì" : "";
        }

        private void tcRXOff_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcRXOff.Text = Convert.ToBoolean(this.GetCurrentColumnValue("GGSALES")) ? "¡Ì" : "";
        }

        private void tcRXFty_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcRXFty.Text = Convert.ToBoolean(this.GetCurrentColumnValue("RXFACT")) ? "¡Ì" : "";
        }

        //private void tcGGFty_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    this.tcGGFty.Text = Convert.ToBoolean(this.GetCurrentColumnValue("GGFACT")) ? "¡Ì" : "";
        //}

        private void tcCLOff_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcCLOff.Text = Convert.ToBoolean(this.GetCurrentColumnValue("CGSALES")) ? "¡Ì" : "";
        }

        private void tcCLFty_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcCLFty.Text = Convert.ToBoolean(this.GetCurrentColumnValue("CGFACT")) ? "¡Ì" : "";
        }

        private void tcActive_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcActive.Text = Convert.ToBoolean(this.GetCurrentColumnValue("Active")) ? "¡Ì" : "";
        }
    }

}
