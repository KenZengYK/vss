using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Report
{
    public partial class SupplierProfileForAEORpt : DevExpress.XtraReports.UI.XtraReport
    {
        public SupplierProfileForAEORpt(SupplierProfile Obj)
        {
            InitializeComponent();

            this.bindingSource1.DataSource = Obj;
        }

    }
}
