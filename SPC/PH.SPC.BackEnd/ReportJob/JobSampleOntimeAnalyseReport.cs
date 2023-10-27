using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobSampleOntimeAnalyseReport : PH.SPC.BackEnd.JobBaseAnalyse
    {
        public JobSampleOntimeAnalyseReport():base()
        {
            this.ReportType = typeof(SampleOntimeAnalyseReport);
        }
    }
}
