using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.BackEnd.Report
{
    public partial class StyleWeightCompareRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public StyleWeightCompareRpt()
        {
            InitializeComponent();
        }


        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.MR.BO.MRStyleWeightCompare_Packing bo=this.GetCurrentRow() as PH.MR.BO.MRStyleWeightCompare_Packing;
            if ((bo.WeightOverValue > 20 && bo.WeightOverValue < 50) || (bo.WeightOverValue < -20 && bo.WeightOverValue > -50))
            {
                this.cellOverPercent.ForeColor = Color.Yellow;
            }
            else if (bo.WeightOverValue > 50 || bo.WeightOverValue < -50)
            {
                this.cellOverPercent.ForeColor = Color.Red;
            }
            else
            {
                this.cellOverPercent.ForeColor = Color.Black;
            }
        }

    }
}
