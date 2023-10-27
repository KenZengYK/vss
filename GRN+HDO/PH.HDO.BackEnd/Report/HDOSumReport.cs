using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.HDO.BackEnd.Report
{
    public partial class HDOSumReport : DevExpress.XtraReports.UI.XtraReport
    {

        public HDOSumReport(string hdoFrom, string hdoTo,string scompany)
        {
            InitializeComponent();
            this.xlFrom.Text = hdoFrom;
            string times = DateTime.Now.ToString("yyyy/MM/dd");
            this.xlTo.Text = hdoTo;
            //this.xlsFrom.Text = hdoFrom;
            this.xrTableCell4.Text = times;
            string titles = string.Format("{0} - PH Garment Mfg Co Ltd (HK)", scompany);
            this.xrTableCell3.Text = titles;
        }

    }
}
