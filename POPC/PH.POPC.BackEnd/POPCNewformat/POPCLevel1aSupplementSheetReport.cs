using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCLevel1aSupplementSheetReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCLevel1aSupplementSheetReport()
        {
            InitializeComponent();
        }

        string coloristCom, custCom;
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            coloristCom = "";
            custCom = "";
        }

        private void detailBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object obj = this.GetCurrentRow();
            if (obj == null) return;
            if (obj is PH.POPC.BO.POColorSizeDetail)
            {
                PH.POPC.BO.POColorSizeDetail csd = obj as PH.POPC.BO.POColorSizeDetail;
                coloristCom += " " + csd.DipColoristComment;
                custCom += " " + csd.DipCustComment;
            }
        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.PHCell_ColoristCom.Text = coloristCom.TrimEnd();
            this.PHCell_CustCom.Text = custCom.TrimEnd();
        }

    }
}
