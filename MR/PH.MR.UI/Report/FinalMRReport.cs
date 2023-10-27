using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MR.BO;

namespace PH.MR.UI.Report
{
    public partial class FinalMRReport : DevExpress.XtraReports.UI.XtraReport
    {
        public FinalMRReport(List<FinalMRReportClass>Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
        }

    }
}
