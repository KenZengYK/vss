using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.HDO.BackEnd.Report
{
    public partial class HDOStockSummmaryRpt : DevExpress.XtraReports.UI.XtraReport
    {
        private string StockRoom;
        public HDOStockSummmaryRpt(string _StockRoom)
        {
            InitializeComponent();
            this.StockRoom = _StockRoom;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrStockRoom.Text = StockRoom;
        }

    }
}
