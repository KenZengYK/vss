using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MobileQC.UI
{
    public partial class rptStyleLineQCStat : DevExpress.XtraReports.UI.XtraReport
    {
        public rptStyleLineQCStat(object ADataSource)
        {
            InitializeComponent();
            this.DataSource = ADataSource;
            //this.bindingSource1.DataSource = ADataSource;
        }

    }
}
