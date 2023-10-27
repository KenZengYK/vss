using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.ReportJob
{
    public partial class JobWOReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobWOReport()
        {
            InitializeComponent();
        }

        #region IServerReport Members
        string _wono;
        string _customer;
        string _customerCode;
        string _param;

        string _company;
        string _styleno;
        bool _isSL;
        public string WorkOrderNo
        {
            get { return this.editWO.Text; }
        }

        public void GetValues(string parameters)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            _isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            //this._customerCode = ss[1].Trim();
            GetCustomer();
        }
        private void GetCustomer()
        {
            WorkOrderList wl = new WorkOrderList();
            this._customerCode = wl.GetCustomerCode(this._wono);

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
            DevExpress.XtraReports.UI.XtraReport report;
            if (this._isSL)
                report = new WOReport(parms);
            else
                report = new KB.WOReport(parms);

            //report.AfterPrint += new EventHandler(report_AfterPrint);
            //report.PrintingSystem.ContinuousPageNumbering = true;
            return report;

        }

        void report_AfterPrint(object sender, EventArgs e)
        {
            DevExpress.XtraReports.UI.XtraReport mReport = ((DevExpress.XtraReports.UI.XtraReport)sender);
            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, _company, _styleno);

            DevExpress.XtraReports.UI.XtraReport report;
            if (this._isSL)
                report = new WOStyleMakingReport(parms);
            else
                report = new KB.WOStyleMakingReport(parms);

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

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {
            string wo = this.editWO.Text;

            string s = string.Format("{0}", wo);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobWOReport ctl = new JobWOReport();
            ctl.editWO.EditValue = parameters;

            return ctl;
        }

        #endregion
    }
}
