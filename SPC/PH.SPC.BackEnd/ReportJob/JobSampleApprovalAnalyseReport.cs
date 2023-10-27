using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobSampleApprovalAnalyseReport : PH.SPC.BackEnd.JobBaseAnalyse
    {
        public JobSampleApprovalAnalyseReport()
            : base()
        {
            this.ReportType = typeof(SampleApprovalAnalyseReport);
        }
    }
}
