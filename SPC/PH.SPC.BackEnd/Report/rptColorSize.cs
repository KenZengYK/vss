using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;

namespace PH.SPC.BackEnd
{
    public partial class rptColorSize : DevExpress.XtraReports.UI.XtraReport
    {
        public rptColorSize()
        {
            InitializeComponent();
        }

        public void SetDataSource(object dataSource)
        {
            this.prPivotGrid1.DataSource = null;
            this.prPivotGrid1.DataSource = dataSource;
        }
    }
}
