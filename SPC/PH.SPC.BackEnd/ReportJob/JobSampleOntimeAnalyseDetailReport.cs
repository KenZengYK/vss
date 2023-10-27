using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobSampleOntimeAnalyseDetailReport : PH.SPC.BackEnd.JobBaseAnalyse
    {
        public JobSampleOntimeAnalyseDetailReport()
            : base()
        {
            this.ReportType = typeof(SampleOntimeAnalyseDetailReport);
        }
    }
}
