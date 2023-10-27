using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MobileQC.UI
{
    public partial class rptCheckReportOPT : DevExpress.XtraReports.UI.XtraReport
    {
        public rptCheckReportOPT(object ADataSource)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = ADataSource;
        }

    }
}
