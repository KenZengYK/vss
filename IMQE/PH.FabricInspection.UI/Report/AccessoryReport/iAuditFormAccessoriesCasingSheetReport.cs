using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class iAuditFormAccessoriesCasingSheetReport : DevExpress.XtraReports.UI.XtraReport
    {
        public iAuditFormAccessoriesCasingSheetReport(List<AccessoryAuditReportDetailTable> AList)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = AList;
        }

    }
}
