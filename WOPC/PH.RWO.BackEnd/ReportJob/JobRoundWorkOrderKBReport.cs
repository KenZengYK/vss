using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.ReportJob
{
    public class JobRoundWorkOrderKBReport : PH.Platform.BackEnd.BO.IServerReport
    {
        public JobRoundWorkOrderKBReport()
        {

        }

        #region IServerReport Members
        string _wono;
        string _customer;
        string _customerCode;
        string _param;

        string _color;
        int _round;

        public void GetValues(string parameters)
        {
            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            this._customerCode = ss[1].Trim();
            this._color = ss[2].Trim();
            this._round = Convert.ToInt32(ss[3]);

            GetCustomer();
        }
        private void GetCustomer()
        {
            if (!string.IsNullOrEmpty(_customer)) return;
            CustomerList list = new CustomerList();
            _customer = list.GetCustomerByCode(this._customerCode);
        }
        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);

            //string parms = string.Format("{0};{1};{2};{3}", _wono, _customerCode, _color, _round);
            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, _color, _round);
            KB.RWOReport report = new KB.RWOReport(parms);
            return report;

        }


        public object GetReportDataSource(string parameters)
        {
            RoundWorkOrderList list = new RoundWorkOrderList();
            return list.GetRoundWorkOrders(_wono, _color, _round);
        }

        #endregion
    }
}
