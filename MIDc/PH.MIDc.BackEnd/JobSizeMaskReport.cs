using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.BackEnd
{
    public class JobSizeMaskReport : PH.Platform.BackEnd.BO.IServerReport
    {
        public JobSizeMaskReport()
        {

        }

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            SizeMaskReport r = new SizeMaskReport();
            return r;
        }

        public object GetReportDataSource(string parameters)
        {
            PH.MIDc.BO.ColorSizeMaskList list = new PH.MIDc.BO.ColorSizeMaskList();
            return list.GetColorSizeMasks();
        }

        #endregion
    }
}
