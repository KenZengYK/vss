using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Collections.Generic;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.MobileQC.BO;
using DevExpress.XtraPrinting;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCDetailInterimReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<sp_CustQCDetailInterimReportResult> DataList = new List<sp_CustQCDetailInterimReportResult>();

        public CustQCDetailInterimReport(string AQCLocation, DateTime AFromDate, DateTime AToDate)
        {
            InitializeComponent();

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = string.Format("exec sp_CustQCDetailInterimReport '{0}', '{1}', '{2}'", AQCLocation, AFromDate.Date, AToDate.Date);
            DataList = db.ExecuteQuery<sp_CustQCDetailInterimReportResult>(SqlStr).ToList();
            this.bindingSource.DataSource = DataList;
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Int64 OID = Convert.ToInt64(this.GetCurrentColumnValue("OID"));
            var CurrentReport = DataList.Where(p => p.OID == OID);

            this.tcOperationCritical.Text = CurrentReport.Where(p => p.ControlProcedure == "Operation" && p.CriticalDefectQty > 0).Select(p => p.CriticalDefectQty).Sum().ToString();
            this.tcOperationMarjor.Text = CurrentReport.Where(p => p.ControlProcedure == "Operation" && p.MarjorDefectQty > 0).Select(p => p.MarjorDefectQty).Sum().ToString();
            this.tcOperationMinor.Text = CurrentReport.Where(p => p.ControlProcedure == "Operation" && p.MinorDefectQty > 0).Select(p => p.MinorDefectQty).Sum().ToString();

            this.tcPOMCritical.Text = "-";
            this.tcPOMMarjor.Text = CurrentReport.Where(p => p.ControlProcedure == "POM" && p.MarjorDefectQty > 0).Select(p => p.MarjorDefectQty).Sum().ToString();
            this.tcPOMMinor.Text = CurrentReport.Where(p => p.ControlProcedure == "POM" && p.MinorDefectQty > 0).Select(p => p.MinorDefectQty).Sum().ToString();
        }

        private void tcResponsibleDept_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PreviousLine = this.GetPreviousColumnValue("ResponsibleDept");
            object CurrentLine = this.GetCurrentColumnValue("ResponsibleDept");
            object NextLine = this.GetNextColumnValue("ResponsibleDept");

            if (CurrentLine == null) //沒有記錄
            {
                return;
            }

            XRTableCell TableCell = sender as XRTableCell;
            TableCell.Borders = BorderSide.Left | BorderSide.Right;

            if (this.CurrentRowIndex > 0 && Object.Equals(CurrentLine, PreviousLine))
            {
                TableCell.Text = "";
            }

            if (this.CurrentRowIndex == this.RowCount - 1) //最后一行
            {
                TableCell.Borders |= BorderSide.Bottom;
                return; //畫完最后一行的Bottom線，打完收工
            }

            if (!Object.Equals(CurrentLine, NextLine)) //當前行與一行不相等，畫Bottom線
            {
                TableCell.Borders |= BorderSide.Bottom;
            }
        }

        private void tcCritical_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("ControlProcedure") == null) return;
            if (this.GetCurrentColumnValue("ControlProcedure").ToString() == "POM")
            {
                this.tcCritical.Text = "-";
            }
        }

        private void tcMarjor_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("ControlProcedure") == null) return;
            if (this.GetCurrentColumnValue("ControlProcedure").ToString() == "Casing")
            {
                this.tcCritical.Text = "-";
            }
        }

        private void tcMinor_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("ControlProcedure") == null) return;
            if (this.GetCurrentColumnValue("ControlProcedure").ToString() == "Casing")
            {
                this.tcCritical.Text = "-";
            }
        }

    }
}
