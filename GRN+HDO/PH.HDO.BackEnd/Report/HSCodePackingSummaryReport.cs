using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;

namespace PH.HDO.BackEnd.Report
{
    public partial class HSCodePackingSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        public HSCodePackingSummaryReport()
        {
            InitializeComponent();
            this.xrPivotGrid_MaterialTypeSummary.OptionsView.ShowRowGrandTotals = false;
            this.xrPivotGrid_MaterialTypeSummary.OptionsView.ShowColumnGrandTotals = false;
        }

        private decimal totalWeight = 0;
        private decimal totalCost = 0;
        private string hdoNO2 = "";

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.HDO.BO.HDOTempBO_Packing bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO_Packing;
            totalWeight += (bo.Weight ?? 0);
            totalCost += bo.Cost;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.cell_UnitPricePerKG.Text = (this.totalCost / (totalWeight == 0 ? 1 : totalWeight)).ToString("#,##0.0#");
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            totalWeight = 0;
            totalCost = 0;
        }


        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.HDO.BO.HDOTempBO_Packing bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO_Packing;
            hdoNO2 = bo.HDONo2;
        }
        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.lblHDOInfoSummaryNote.Text = this.hdoNO2 + "物料分類統計：";

            //Xsj:統計每種物料的總重
            List<PH.HDO.BO.HDOTempBO_Packing> bos = this.Report.DataSource as List<PH.HDO.BO.HDOTempBO_Packing>;
            var gp = (from val in bos
                      where val.HDONo2 == this.hdoNO2
                      group val by val.MaterialName into g
                      select new { MaterialName = g.Key, TotalWeight = g.Sum(p => (p.Weight ?? 0)) }).ToList();
            this.xrPivotGrid_HDOSummary.DataSource = gp;
 

        }


        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //Xsj:統計每種物料的總重
            List<PH.HDO.BO.HDOTempBO_Packing> bos = this.Report.DataSource as List<PH.HDO.BO.HDOTempBO_Packing>;
            var gp = (from val in bos
                      group val by val.MaterialName into g
                      select new { MaterialName = g.Key, TotalWeight = g.Sum(p => (p.Weight ?? 0)) }).ToList();
            this.xrPivotGrid_MaterialTypeSummary.DataSource = gp;
 

        }


    }
}
