using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class RWOProcessingReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWOProcessingReport()
        {
            InitializeComponent();
        }

        public RWOProcessingReport(string parameters)
        {
            InitializeComponent();

        }
         
    }
}
