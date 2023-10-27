using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.KB
{
    public partial class WOProcessingReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOProcessingReport()
        {
            InitializeComponent();
        }

        public WOProcessingReport(string parameters)
        {
            InitializeComponent();

        }

    }
}
