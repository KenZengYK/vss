using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Data;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class iAuditFormAccessoriesHeaderReport : DevExpress.XtraReports.UI.XtraReport
    {

        string AuditType = "";
        public iAuditFormAccessoriesHeaderReport(AccessoryHeader obj)
        {
            InitializeComponent();

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0, 3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7.1 " + "dd " + AMM + " " + Add;
            this.bindingSource1.DataSource = obj;

            iAuditFormAccessoriesSheetReport DetailRpt = new iAuditFormAccessoriesSheetReport(obj);
            this.xrSubAccessoryAuditDetail.ReportSource = DetailRpt;
        }




    }
}
