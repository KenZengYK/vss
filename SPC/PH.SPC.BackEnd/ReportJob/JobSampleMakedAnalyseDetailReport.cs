using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobSampleMakedAnalyseDetailReport : PH.SPC.BackEnd.JobBaseAnalyse
    {
        public JobSampleMakedAnalyseDetailReport()
            : base()
        {
            this.ReportType = typeof(SampleMakedAnalyseDetailReport);
        }
    }
}
