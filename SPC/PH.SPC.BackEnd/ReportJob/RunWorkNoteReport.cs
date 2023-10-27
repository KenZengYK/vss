using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.SPC.BackEnd
{
    public class RunWorkNoteReport : PH.Platform.BackEnd.BO.IServerReport
    {

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        //string _param;
        //string _sampleOrderID;
        //string _styleID;
        //string _sortID;
        //int _editionID;

        Int64 OID;
        public void GetValues(string parameters)
        {
            OID = Convert.ToInt64(parameters);
        }
        //public void GetValues(string parameters)
        //{
        //    if (string.IsNullOrEmpty(parameters)) return;

        //    string[] c = new string[1] { ";" };
        //    string[] ss = parameters.Split(c, StringSplitOptions.None);
        //    this._sampleOrderID = ss[0];
        //    this._styleID = ss[1];
        //    this._sortID = ss[2];
        //    this._editionID = Convert.ToInt32(ss[3]);
        //}




        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            //this._param = parameters;
            WorkNoteReport report = new WorkNoteReport();
            return report;
        }

        public object GetReportDataSource(string parameters)
        {
            GetValues(parameters);

            PH.SPC.BO.WorkNoteList wn = new PH.SPC.BO.WorkNoteList();
            return wn.GetStyleSortEditions(OID);

            // return wn.GetStyleSortEditions(_sampleOrderID, _styleID, _sortID, _editionID);
        }

        #endregion
    }
}
