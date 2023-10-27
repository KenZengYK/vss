using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Rpt21aa
{
    public partial class FullInspectionDefectPointListReport_SubRpt21a : DevExpress.XtraReports.UI.XtraReport
    {
        public FullInspectionDefectPointListReport_SubRpt21a(List<FullInSpectionPerDefectPointsSummary> Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
        }

        private void xrTableRow9_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
            //处理Result(Grade)栏位結果字体颜色
            if (this.GetCurrentColumnValue("PerGrade") != null)
            {
                string CellResult = this.GetCurrentColumnValue("PerGrade").ToString();

                this.xrTableCell88.ForeColor = (CellResult == "F" || CellResult == "U") ? System.Drawing.Color.Red : System.Drawing.SystemColors.ControlText;
            }
        }

    }
}
