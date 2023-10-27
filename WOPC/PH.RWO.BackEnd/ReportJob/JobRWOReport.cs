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
    public partial class JobRWOReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobRWOReport()
        {
            InitializeComponent();
        }

        #region IServerReport Members
        string _wono;
        string _customer;
        string _customerCode;
        string _param;

        string _color;
        int _round;
        bool _isSL;
        public string WorkOrderNo
        {
            get { return this.editWO.Text; }
        }
        public string StyleColor
        {
            get { return this.editColor.Text; }
        }
        public int RoundNo
        {
            get { return Convert.ToInt32(this.editRound.EditValue); }
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
            this._color = ss[1].Trim();
            this._round = Convert.ToInt32(ss[2]);

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

            //string parms = string.Format("{0};{1};{2};{3}", _wono, _customerCode, _color, _round);
            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, _color, _round);
            DevExpress.XtraReports.UI.XtraReport report;
            if (this._isSL)
                report = new RWOReport(parms);
            else
                report = new KB.RWOReport(parms);

            return report;

        }
        public object GetReportDataSource(string parameters)
        {
            RoundWorkOrderList list = new RoundWorkOrderList();
            return list.GetRoundWorkOrders(_wono, _color, _round);
        }

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {
            string wo = this.editWO.Text;
            string color = this.editColor.Text;
            string round = this.editRound.Text;

            string s = string.Format("{0};{1};{2}", wo, color, round);
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobRWOReport ctl = new JobRWOReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editWO.EditValue = paras[0];
                ctl.editColor.EditValue = paras[1];
                ctl.editRound.EditValue = Convert.ToInt32(paras[2]);
            }

            return ctl;
        }

        #endregion
    }
}
