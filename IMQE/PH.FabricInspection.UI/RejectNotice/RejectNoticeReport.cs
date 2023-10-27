using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.FabricInspection.UI.RejectNotice
{
    public partial class RejectNoticeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RejectNoticeReport(PH.FabricInspection.BO.RejectNotice Obj)
        {
            InitializeComponent();
            this.bindingSource1.DataSource = Obj.GetReportData();
        }

    }
}
