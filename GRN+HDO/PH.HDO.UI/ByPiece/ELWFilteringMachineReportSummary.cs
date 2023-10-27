using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Collections.Generic;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class ELWFilteringMachineReportSummary : DevExpress.XtraReports.UI.XtraReport
    {
        public ELWFilteringMachineReportSummary(List<ByPiece_ELWFilteringMachineSummary> dt)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = dt;
        }

    }
}
