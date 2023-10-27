using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.FabricInspection.UI.Report
{
    public partial class InformationBylot : DevExpress.XtraReports.UI.XtraReport
    {
        decimal currGroupTotalLen = 0;
        decimal totalLength = 1;

        public InformationBylot()
        {
            InitializeComponent();
        }


        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (currGroupTotalLen > 0)
            {
                this.AQLPercentageCll.Text = (currGroupTotalLen / totalLength * 100).ToString("###,###,##0.####");
            }
            currGroupTotalLen = 0;
        }

        private void Detail2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.FabricInspection.BO.Fabric_Insp_Header currFISHeader = this.DetailReport1.GetCurrentRow() as PH.FabricInspection.BO.Fabric_Insp_Header;
            if (currFISHeader != null)
            {
                currGroupTotalLen += (currFISHeader.Actual_Length ?? 0);
                if (currFISHeader.TotalLength != 0)
                {
                    totalLength = currFISHeader.TotalLength;
                }
            }

        }


    }
}
