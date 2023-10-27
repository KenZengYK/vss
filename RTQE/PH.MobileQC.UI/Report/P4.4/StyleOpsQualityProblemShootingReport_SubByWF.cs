using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class StyleOpsQualityProblemShootingReport_SubByWF : DevExpress.XtraReports.UI.XtraReport
    {
        public StyleOpsQualityProblemShootingReport_SubByWF(List<StyleOptQualityProblemShootingReportResultByWF> Alist)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Alist;
        }

    }
}
