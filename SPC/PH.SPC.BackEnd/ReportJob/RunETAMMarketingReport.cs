using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.SPC.BackEnd
{
    public class RunETAMMarketingReport : PH.Platform.BackEnd.BO.IServerReport
    {

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        string _param;
        string _sampleOrderID;
        string _styleID;
        int _phase;
        bool _completed;

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._sampleOrderID = ss[0];
            this._styleID = ss[1];
            this._phase =Convert.ToInt32( ss[2]);
            this._completed = Convert.ToBoolean(ss[3]);
        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            //ETAMMarketingReport report = new ETAMMarketingReport();
            return null;
        }

        public object GetReportDataSource(string parameters)
        {
            GetValues(parameters);

            PH.SPC.BO.SPCCustomerList list = new PH.SPC.BO.SPCCustomerList();
            return list.GetSPCCustomers(_sampleOrderID, _styleID, _phase, _completed);
        }

        #endregion
    }
}
