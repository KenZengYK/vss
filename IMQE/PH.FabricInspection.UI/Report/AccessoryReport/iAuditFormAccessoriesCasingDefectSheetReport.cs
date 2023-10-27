using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class iAuditFormAccessoriesCasingDefectSheetReport : DevExpress.XtraReports.UI.XtraReport
    {
        public iAuditFormAccessoriesCasingDefectSheetReport(AccessoryHeader Aobj, string AuditType)
        {
            InitializeComponent();

            //this.bindingSource1.DataSource = Aobj.GetAccessoryAuditReportCasingDefectTable(Aobj.AuditNo.ToString(),AuditType);
        }

    }
}
