using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;

namespace PH.MobileQC.UI.RPT
{
    public partial class ExamExamSubReport_Opts : DevExpress.XtraReports.UI.XtraReport
    {
        public ExamExamSubReport_Opts(DataTable ADataList)
        {
            InitializeComponent();

            bsOpts.DataSource = ADataList;

        }

    }
}
