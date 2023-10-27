using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MIDc.BO;

namespace PH.MIDc.BackEnd
{
    public partial class PriceMatrixReportHeader : DevExpress.XtraReports.UI.XtraReport
    {
        private PH.MIDc.BO.Detail _detail;
        public PriceMatrixReportHeader(PH.MIDc.BO.Detail CurrDetail)
        {
            InitializeComponent();
            _detail = CurrDetail;
            this.bindingSource1.DataSource = CurrDetail;
            SetReportDate();
        } 

        //设定子报表数据源
        public void SetReportDate()
        {
            PH.MIDc.BO.Detail d = _detail;
            if (d == null) return;

            PriceHeaderInfo pHInfo = new PriceHeaderInfo();
            //Last Price:
            if (pHInfo.GetLastPriceHeader(d, "Standard", "") != null)
            {
                PriceMatrixReport r = new PriceMatrixReport(d, PriceMatrixTypeEnum.LastPrice);
                this.subReport_LastPrice.ReportSource = r; 
            }
            //Current Price:
            if (pHInfo.GetCurrPriceHeader(d, "Standard", "") != null)
            {
                PriceMatrixReport r = new PriceMatrixReport(d, PriceMatrixTypeEnum.CurrPrice);
                this.subReport_CurrPrice.ReportSource = r;
            }
            //Future Price:
            if (pHInfo.GetFuturePriceHeader(d, "Standard", "") != null)
            {
                PriceMatrixReport r = new PriceMatrixReport(d, PriceMatrixTypeEnum.FuturePrice);
                this.subReport_FuturePrice.ReportSource = r;
            }
        } 
    }
}
