using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.SOSS
{
    public partial class SOSSReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SOSSReport()
        {
            InitializeComponent();
        }

        public SOSSReport(SOSSHeader header)
        {
            InitializeComponent();

            _header = header;
            SetParamValue();
        }
        SOSSHeader _header;

        private void SetParamValue()
        {
            List<SOSSHeader> list = new List<SOSSHeader>();
            list.Add(_header);
            this.DataSource = list;
        }


    }
}
