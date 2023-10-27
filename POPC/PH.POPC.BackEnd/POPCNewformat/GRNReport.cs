using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class GRNReport : DevExpress.XtraReports.UI.XtraReport
    {
        public GRNReport(DateTime etdFrom,DateTime etdTo)
        {
            InitializeComponent();
        }


    }
}
