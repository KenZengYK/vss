using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.HDO.BackEnd.Report
{
    public partial class HDOStockTackRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public HDOStockTackRpt(string Stack,string Lot_No)
        {
            InitializeComponent();
        }

    }
}
