using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MR.BO.Common;
using System.Collections.Generic;

namespace PH.MR.UI.Report
{
    public partial class MRSummaryWithProjectWorkOrder : DevExpress.XtraReports.UI.XtraReport
    {
        public MRSummaryWithProjectWorkOrder(List<MRSummaryWithProjectWorkOrderRptBO> Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
        }

    }
}
