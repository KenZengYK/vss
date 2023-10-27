using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.HDO.BO;

namespace PH.HDO.BackEnd.Report
{
    public partial class HSHDOSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        public HSHDOSummaryReport()
        {
            InitializeComponent();

            //PrepareData();
        }

        //void PrepareData()
        //{
        //    string SqlStr = "exec sp_GRNHDO_Packing 'P1', 1, 'HK', 'Y'";
        //    HDODataContext db = ContextBuilder.CreateContext<HDODataContext>();
        //    this.bsHSHDOSummary.DataSource = db.ExecuteDataTable(SqlStr, "dtHSHDOSummary");
        //}

    }
}
