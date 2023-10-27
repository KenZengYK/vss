using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;

namespace PH.HDO.UI.Report
{
    public partial class HSCodePackingDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        public HSCodePackingDetailReport()
        {
            InitializeComponent(); 
        }

        private decimal totalWeight = 0;
        private decimal totalCost = 0;
        private string hdoNO2 = "";

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PH.HDO.BO.HDOTempBO_Packing bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO_Packing;
            //totalWeight += (bo.Weight ?? 0);
            //totalCost += bo.Cost; 
            //this.cell_UnitPricePerKG.Text = (this.totalCost / (totalWeight == 0 ? 1 : totalWeight)).ToString("#,##0.0");

            PH.HDO.BO.ContractFull bo = this.GetCurrentRow() as PH.HDO.BO.ContractFull;
            if (bo == null)
                return;

            totalWeight += (bo.Weight ?? 0);
            totalCost += bo.TotalCost.GetValueOrDefault(); 
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            totalWeight = 0;
            totalCost = 0;
            this.cell_UnitPricePerKG.Text = "";
        } 

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.cell_UnitPricePerKG.Text = (this.totalCost / (totalWeight == 0 ? 1 : totalWeight)).ToString("#,##0.0");
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
        }


        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PH.HDO.BO.HDOTempBO_Packing bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO_Packing;
            //hdoNO2 = bo.HDONo2;
            PH.HDO.BO.ContractFull bo = this.GetCurrentRow() as PH.HDO.BO.ContractFull;
            if (bo == null)
                return;

            hdoNO2 = bo.HDONo2;
        }


    }
}
