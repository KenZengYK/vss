using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.UI.Report
{
    public partial class COSTANALYSISCERTIFICATE : DevExpress.XtraReports.UI.XtraReport
    {
        private PH.RWO.BO.Style CurStyle;
        public COSTANALYSISCERTIFICATE()
        {
            InitializeComponent();
        }
        public COSTANALYSISCERTIFICATE(PH.RWO.BO.Style _style)
        {
            this.CurStyle =_style ;
            InitializeComponent();
        }


        private void COSTANALYSISCERTIFICATE_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.bindingSource1.DataSource =CurStyle ;
        }

    }
}
