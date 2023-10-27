using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;

namespace PH.MobileQC.UI.RPT
{
    public partial class ExamExamSubReport_Defect : DevExpress.XtraReports.UI.XtraReport
    {
        public ExamExamSubReport_Defect(DataTable ADataList)
        {
            InitializeComponent();

            bsDefect.DataSource = ADataList;

        }

    }
}
