using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.HDO.BackEnd
{
    public partial class HDOReceivedReport : DevExpress.XtraReports.UI.XtraReport
    {

        public HDOReceivedReport(string hdoFrom, string hdoTo,string companys)
        {
            InitializeComponent();
            this.xrTableCell4.Text = hdoFrom;
            this.xrTableCell6.Text = hdoTo;
            string times = DateTime.Now.ToString("yyyy/MM/dd");
            this.xrTableCell2.Text = times;
            //this.xrTableCell39.Text = hdoFrom;
            string titles = string.Format("{0} - PH Garment Mfg Co Ltd (HK)",companys);
            this.xrLabel2.Text = titles;
        }

    }
}
