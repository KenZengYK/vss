using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.HDO.BO;

namespace PH.HDO.BackEnd.Report
{
    public partial class GRNStockInReport : DevExpress.XtraReports.UI.XtraReport
    {

        public GRNStockInReport(GRNReportType reportType)
        {
            InitializeComponent();
            _locations = new List<TempLocation>();
            //_grnNos = new List<decimal>();
            _seq = 0;

            this._reportType = reportType;
            this._received = this._reportType == GRNReportType.ReceivedHK || this._reportType == GRNReportType.ReceivedSL || this._reportType == GRNReportType.ReceivedALL;
            this.GroupHeader5.Visible = this._received;
        }
        private bool _received;
        private GRNReportType _reportType;
        DateTime _minDt;
        DateTime _maxDt;

        public void SetCaption()
        {

            GetMaxMinDate(this.DataSource as List<HDOTempBO>);
            string title = "";
            switch (this._reportType)
            {
                case GRNReportType.ReceivingALL:
                    title = "GRN Cargo Incoming preparation - HK CCS / SL CRS";
                    break;
                case GRNReportType.ReceivingSL:
                    title = "GRN Cargo Incoming preparation - SL CRS";
                    break;
                case GRNReportType.ReceivingHK:
                    title = "GRN Cargo Incoming preparation - HK CCS";
                    break;
                case GRNReportType.ReceivedALL:
                    title = "GRN Cargo Received for HDO (location transfer) handling - HK CCS / SL CRS";
                    break;
                case GRNReportType.ReceivedSL:
                    title = "GRN Cargo Received for HDO (location transfer) handling - SL CRS";
                    break;
                case GRNReportType.ReceivedHK:
                    title = "GRN Cargo Received for HDO (location transfer) handling - HK CCS";
                    break;
                default:
                    title = "GRN Note";
                    break;
            }

            int d = (_maxDt - _minDt).Days + 1;
            this.cellGRNPeriod.Text = string.Format("8) GRN create date Period is from {0:yyyy'-'MM'-'dd} to {1:yyyy'-'MM'-'dd} ({2} days)", _minDt, _maxDt, d);

            //string s = d == 1 ? string.Format("Daily Group GRN Advice - {0}", isCCS ? "CCS" : "CRS") : "GRN Outstanding list for HDO handling";
            //this.lbTitle.Text = title;
            this.ExportOptions.PrintPreview.DefaultFileName = title.Replace("/", "&");
        }
        private void GetMaxMinDate(List<HDOTempBO> ds)
        {
            decimal dt = 0;
            decimal minDt = 100000000;
            decimal maxDt = 0;
            foreach (var a in ds)
            {
                HDOTempBO h = a as HDOTempBO;
                dt = h.RECD59;
                minDt = Math.Min(dt, minDt);
                maxDt = Math.Max(dt, maxDt);
            }
            _minDt = DateTime.MinValue;
            _maxDt = DateTime.MinValue;
            if (minDt != 100000000)
            {
                _minDt = HDOTempBO.ErpInt2Date(Convert.ToInt32(minDt));
            }
            if (maxDt != 0)
            {
                _maxDt = HDOTempBO.ErpInt2Date(Convert.ToInt32(maxDt));
            }
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
            //decimal grn = _grnNos.Find(delegate(decimal s)
            //  {
            //      return s == bo.GRNO59;
            //  });

            //if (grn == 0)
            //    _grnNos.Add(bo.GRNO59);

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.cellGRNQty.ForeColor = (this._poqty == this._grnqty) ? SystemColors.ControlText : Color.Red;
        }
        #endregion

        #region summary of Receiption location
        List<TempLocation> _locations;
        //TempLocation _currTempLocation;
        //List<decimal> _grnNos;
        int _seq;


        private void GroupHeader4_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            // _seq++;  remark by joseph


            // add by joseph
            PH.HDO.BO.HDOTempBO bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO;

            if (bo == null) return;

            if (_curhdo != bo.HDONo)
            {
                _seq = 0;
                _curhdo = bo.HDONo;
            }

            _seq++;

            this.lbSeq.Text = _seq.ToString();



            bool isred = ((bo.ETADate ?? DateTime.MinValue) - (bo.ReceivedDate ?? DateTime.MinValue)).Hours < 0;
            SetCellForeColor(this.lbActualRecd, isred);

            isred = ((bo.ETADate ?? DateTime.MinValue) > (bo.FWDate ?? DateTime.MinValue));
            SetCellForeColor(this.lbFWStarte, isred);

            TempLocation t = _locations.Find(delegate(TempLocation t1)
            {
                return t1.Location == bo.ReceiptLocation;
            });
            if (t == null)
            {
                t = new TempLocation();
                t.Location = bo.ReceiptLocation;
                t.GRNs = 1;
                _locations.Add(t);
            }
            else
            {
                t.GRNs++;
            }
        }
        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //_grnNos.Clear();
            //_currTempLocation = new TempLocation();
            //PH.HDO.BO.HDOTempBO bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO;
            //if (bo == null) return;

            //_currTempLocation.Location = bo.ReceiptLocation;


        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //_currTempLocation.GRNs = _grnNos.Count;
            //_locations.Add(_currTempLocation);

        }
        #endregion

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string s = "";
            foreach (var item in this._locations)
            {
                if (string.IsNullOrEmpty(item.Location))
                    item.Location = "N.A.";

                s += string.Format("{0} - {1}     ", item.Location, item.GRNs);
            }
            s = s.TrimEnd();
            this.cellSubGRNs.Text = string.IsNullOrEmpty(s) ? "" : string.Format("( {0} )", s);
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            this.lbSeq.Text = "";

        }

        private void SetCellForeColor(XRControl control, bool isRed)
        {
            control.ForeColor = isRed ? Color.Red : Color.Green;
        }

        private void GRNNoteReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetCaption();
        }

        string _curhdo;
        private void GroupHeader6_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _seq = 0;


            // add by joseph 15/11/25
            PH.HDO.BO.HDOTempBO bo = this.GetCurrentRow() as PH.HDO.BO.HDOTempBO;

            if (bo == null) return;
            _curhdo = bo.HDONo;

        }
    }
    //internal class TempLocation
    //{
    //    public string Location { get; set; }
    //    public int GRNs { get; set; }
    //}
}
