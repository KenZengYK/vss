using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCLevel2SuppPerformanceByItemReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCLevel2SuppPerformanceByItemReport()
        {
            InitializeComponent();
        }

        
        decimal _qtyOnTime = 0;
        decimal _qty1w = 0;
        decimal _qty10d = 0;
        decimal _qty2w = 0;
        decimal _qty15d = 0;

        decimal _qty = 0;

        #region PH Qty


        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _qty = 0;

        }
        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _qty += Convert.ToDecimal(GetCurrentColumnValue("PHPOQty"));
        }
        private void detailBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // _qty += Convert.ToDecimal(GetCurrentColumnValue("PHPOQty"));

        }

        #endregion

        #region On Time

        private void cellOnTime_SummaryReset(object sender, EventArgs e)
        {
            _qtyOnTime = 0;

        }

        private void cellOnTime_SummaryRowChanged(object sender, EventArgs e)
        {
            _qtyOnTime += Convert.ToDecimal(GetCurrentColumnValue("QtyOnTime"));

        }

        private void cellOnTime_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _qtyOnTime / _qty;
            e.Result = d;
            e.Handled = true;
        }
        #endregion

        #region 1 week

        private void cell1w_SummaryReset(object sender, EventArgs e)
        {
            _qty1w = 0;

        }

        private void cell1w_SummaryRowChanged(object sender, EventArgs e)
        {
            _qty1w += Convert.ToDecimal(GetCurrentColumnValue("Qty1Week"));

        }

        private void cell1w_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _qty1w / _qty;
            e.Result = d;
            e.Handled = true;
        }
        #endregion

        #region 10 days

        private void cell10d_SummaryReset(object sender, EventArgs e)
        {
            _qty10d = 0;

        }

        private void cell10d_SummaryRowChanged(object sender, EventArgs e)
        {
            _qty10d += Convert.ToDecimal(GetCurrentColumnValue("Qty10days"));

        }

        private void cell10d_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _qty10d / _qty;
            e.Result = d;
            e.Handled = true;
        }
        #endregion

        #region 2 weeks

        private void cell2w_SummaryReset(object sender, EventArgs e)
        {
            _qty2w = 0;

        }

        private void cell2w_SummaryRowChanged(object sender, EventArgs e)
        {
            _qty2w += Convert.ToDecimal(GetCurrentColumnValue("Qty2Weeks"));

        }

        private void cell2w_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _qty2w / _qty;
            e.Result = d;
            e.Handled = true;
        }
        #endregion

        #region 2 weeks +

        private void cell15d_SummaryReset(object sender, EventArgs e)
        {
            _qty15d = 0;

        }

        private void cell15d_SummaryRowChanged(object sender, EventArgs e)
        {
            _qty15d += Convert.ToDecimal(GetCurrentColumnValue("QtyAfter2Weeks"));

        }

        private void cell15d_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            decimal d = _qty == 0 ? 0 : _qty15d / _qty;
            e.Result = d;
            e.Handled = true;
        }
        #endregion

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            cellPOQty.Text = string.Format("{0:N0}", this._qty);
        }



    }
}
