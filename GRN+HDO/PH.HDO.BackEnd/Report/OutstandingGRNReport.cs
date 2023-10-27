using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.HDO.BackEnd.Report
{
    public partial class OutstandingGRNReport : DevExpress.XtraReports.UI.XtraReport
    {

        public OutstandingGRNReport()
        {
            InitializeComponent();
            _locations = new List<TempLocation>();
            _grnNos = new List<decimal>();

        }
        public void SetCaption(DateTime minDt, DateTime maxDt)
        {
            int d = (maxDt - minDt).Days + 1;
            this.cellGRNPeriod.Text = string.Format("8) GRN create date Period is from {0:yyyy'-'MM'-'dd} to {1:yyyy'-'MM'-'dd} ({2} days)", minDt, maxDt, d);
        }

        #region summary qty

        private decimal _poqty, _grnqty;
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _poqty = 0;
            _grnqty = 0;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.HDO.BO.HDOTempBO bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO;
            if (bo == null) return;

            //Qty
            _poqty += bo.OQTY59;
            _grnqty += bo.TRNQ59;


            //GRN NO
            decimal grn = _grnNos.Find(delegate(decimal s)
              {
                  return s == bo.GRNO59;
              });

            if (grn == 0)
                _grnNos.Add(bo.GRNO59);

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.cellGRNQty.ForeColor = (this._poqty == this._grnqty) ? SystemColors.ControlText : Color.Red;
        }
        #endregion

        #region summary of Receiption location
        List<TempLocation> _locations;
        TempLocation _currTempLocation;
        List<decimal> _grnNos;

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _grnNos.Clear();
            _currTempLocation = new TempLocation();
            PH.HDO.BO.HDOTempBO bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO;
            if (bo == null) return;

            _currTempLocation.Location = bo.ReceiptLocation;

        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _currTempLocation.GRNs = _grnNos.Count;
            _locations.Add(_currTempLocation);

        }
        #endregion

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string s = "";
            foreach (var item in this._locations)
            {
                if (string.IsNullOrEmpty(item.Location)) 
                    item.Location="N.A.";

                s += string.Format("{0} - {1}     ", item.Location, item.GRNs);
            }
            s = s.TrimEnd();
            this.cellSubGRNs.Text = string.IsNullOrEmpty(s) ? "" : string.Format("( {0} )", s);
        }

    }
    internal class TempLocation
    {
        public string Location { get; set; }
        public int GRNs { get; set; }
    }
}
