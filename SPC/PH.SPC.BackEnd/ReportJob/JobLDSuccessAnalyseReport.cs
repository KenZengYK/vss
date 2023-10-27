using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.BackEnd.ReportJob
{
    public partial class JobLDSuccessAnalyseReport : PH.SPC.BackEnd.JobBaseAnalyse
    {
        public JobLDSuccessAnalyseReport()
            : base()
        {
            this.ReportType = typeof(LDSuccessAnalyseReport);
        }
    }
}
