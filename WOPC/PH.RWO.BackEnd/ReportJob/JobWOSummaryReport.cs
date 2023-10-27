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
    public partial class JobWOSummaryReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobWOSummaryReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            PH.RWO.BO.CustomerCodeList list = new CustomerCodeList();
            this.editCust.Properties.Items.Add("");
            var custs = list.GetDistinctCustomers();
            foreach (string item in custs)
            {
                this.editCust.Properties.Items.Add(item);
            }
        }

        #region IServerReport Members
        string _customerCode;
        DateTime _exftyFrom;
        DateTime _exftyTo;
        DateTime _deliveryFrom;
        DateTime _deliveryTo;
        string _param;

        bool _isSL;
        public string CustomerCode
        {
            get { return this.editCust.Text; }
        }
        public DateTime ExftyFrom
        {
            get { return this.editExfty1.DateTime; }
        }
        public DateTime ExftyTo
        {
            get { return this.editExfty2.DateTime; }
        }

        public DateTime DeliveryFrom
        {
            get { return this.editDelivery1.DateTime; }
        }
        public DateTime DeliveryTo
        {
            get { return this.editDelivery2.DateTime; }
        }
        public void GetValues(string parameters)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            _isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._customerCode = ss[0];
            this._exftyFrom = Convert.ToDateTime(ss[1]);
            this._exftyTo = Convert.ToDateTime(ss[2]);
            this._deliveryFrom = Convert.ToDateTime(ss[3]);
            this._deliveryTo = Convert.ToDateTime(ss[4]);
        }
        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);

            DevExpress.XtraReports.UI.XtraReport r;

            //if (_isSL)
            r = new PH.RWO.BackEnd.WOSummaryReport(parameters);
            //else
            //    r = new PH.RWO.BackEnd.KB.WOSummaryReport(parameters);

            return r;

        }

        public object GetReportDataSource(string parameters)
        {
            PH.RWO.BO.WorkOrderList list = new WorkOrderList();
            var ws = list.GetWorkOrders(this._customerCode, this._exftyFrom, this._exftyTo, this._deliveryFrom, this._deliveryTo);

            return ws;
        }

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {
            DateTime dt1 = this.ExftyFrom;
            DateTime dt2 = this.ExftyTo;
            if (dt1 == DateTime.MinValue) dt1 = dt2;
            if (dt2 == DateTime.MinValue) dt2 = dt1;

            DateTime dt3 = this.DeliveryFrom;
            DateTime dt4 = this.DeliveryTo;
            if (dt3 == DateTime.MinValue) dt3 = dt4;
            if (dt4 == DateTime.MinValue) dt4 = dt3;

            string s = string.Format("{0};{1:yyyy-MM-dd};{2:yyyy-MM-dd};{3:yyyy-MM-dd};{4:yyyy-MM-dd}", this.CustomerCode, dt1, dt2, dt3, dt4);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobWOSummaryReport ctl = new JobWOSummaryReport();
            //ctl.editCust.EditValue = parameters;

            return ctl;
        }

        #endregion

        private void editCust_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Index == 1)
            {
                using (SelectCustomerForm frm = new SelectCustomerForm())
                {
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        this.editCust.EditValue = frm.Customer;
                    }
                }
            }
        }
    }
}
