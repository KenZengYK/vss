using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.ReportJob
{
    public class JobWorkOrderReport : PH.Platform.BackEnd.BO.IServerReport
    {
        public JobWorkOrderReport()
        {

        }

        #region IServerReport Members
        string _wono;
        string _customer;
        string _customerCode;
        string _param;

        string _company;
        string _styleno;

        public void GetValues(string parameters)
        {
            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            this._customerCode = ss[1].Trim();
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

            //string parms = string.Format("{0};{1}", _wono, _customerCode);
            string parms = string.Format("{0};{1}", _wono, _customer);
            WOReport report = new WOReport(parms);
            //report.AfterPrint += new EventHandler(report_AfterPrint);
            //report.PrintingSystem.ContinuousPageNumbering = true;
            return report;

        }

        void report_AfterPrint(object sender, EventArgs e)
        {
            DevExpress.XtraReports.UI.XtraReport mReport = ((DevExpress.XtraReports.UI.XtraReport)sender);
            //string parms = string.Format("{0};{1};{2};{3}", _wono, _customerCode, _company, _styleno);
            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, _company, _styleno);
            WOStyleMakingReport report = new WOStyleMakingReport(parms);
            report.DataSource = mReport.DataSource;
            report.CreateDocument();
            mReport.Pages.AddRange(report.Pages);

        }

        public object GetReportDataSource(string parameters)
        {
            //GetValues(parameters);

            WorkOrderList list = new WorkOrderList();
            var aa = list.GetWorkOrders(_wono);
            foreach (WorkOrder item in aa)
            {
                this._company = item.Company;
                this._styleno = item.StyleNo;
            }
            return aa;
        }
        //public object GetStyleMakingDataSource(string company, string styleno)
        //{
        //    PH.MaterialStandby.BO.StyleList list = new PH.MaterialStandby.BO.StyleList();

        //    return list.GetStyleList(company, styleno);
        //}
        #endregion
    }
}
