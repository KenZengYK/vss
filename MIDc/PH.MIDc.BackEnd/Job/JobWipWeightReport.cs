using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace PH.MIDc.BackEnd
{
    public partial class JobWipWeightReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobWipWeightReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            _detaillist = new PH.MIDc.BO.DetailList();
            _detaillist.CurrentDataContext.CommandTimeout = 2000;
            var custs = _detaillist.GetCustomers();
            this.editCustomer.Properties.Items.AddRange(custs);


        }

        //string _all = "ALL";
        string _param;

        string _cust;
        string _projectNo;
        DateTime _dateBegin;
        DateTime _dateEnd;
        bool _isStyle;

        public string Cust
        {
            get
            {
                string s = (string)this.editCustomer.EditValue;
                if (s == "ALL") s = "";
                return s;
            }
        }
        public string ProjectNo
        {
            get { return (string)this.edProject.EditValue; }
        }
        public DateTime DateBegin
        {
            get { return this.editBegin.DateTime; }
        }
        public DateTime DateEnd
        {
            get { return this.editEnd.DateTime; }
        }

        public bool IsStyle
        {
            get { return (bool)this.rgOption.EditValue; }
            set { this.rgOption.EditValue = value; }
        }
        public bool IsEmptyCondition
        {
            get
            {
                return (string.IsNullOrEmpty(Cust) && string.IsNullOrEmpty(ProjectNo) && DateBegin == DateTime.MinValue && DateEnd == DateTime.MinValue);
            }
        }

        PH.MIDc.BO.DetailList _detaillist;

        public void GetValues(string parameters)
        {
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            //_isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._cust = ss[0];
            this._projectNo = ss[1];
            this._dateBegin = Convert.ToDateTime(ss[2]);
            this._dateEnd = Convert.ToDateTime(ss[3]);
            this._isStyle = Convert.ToBoolean(ss[4]);
        }

        #region IParameterSetControl Members

        public string GetParameter()
        {
            DateTime d1 = DateBegin;
            DateTime d2 = DateEnd;
            if (d1 > d2)
            {
                d1 = DateEnd;
                d2 = DateBegin;
            }
            if (d1 == DateTime.MinValue) d1 = d2;
            if (d2 == DateTime.MinValue) d2 = d1;

            string s = string.Format("{0};{1};{2};{3};{4}", Cust, ProjectNo, d1, d2, this.IsStyle);
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobWipWeightReport ctl = new JobWipWeightReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editCustomer.EditValue = paras[0];
                ctl.edProject.EditValue = paras[1];
                ctl.editBegin.EditValue = Convert.ToDateTime(paras[2]);
                ctl.editEnd.EditValue = Convert.ToDateTime(paras[3]);
                ctl.rgOption.EditValue = Convert.ToBoolean(paras[4]);
            }

            return ctl;
        }

        #endregion

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);
            return new WipWeightReport(this._cust, this._projectNo, this._dateBegin, this._dateEnd, this._isStyle);
        }

        public object GetReportDataSource(string parameters)
        {
            PH.MIDc.BO.WeightList list = new PH.MIDc.BO.WeightList();
            string c = (this._cust == "ALL") ? "" : this._cust;
            return list.GetWipWeightData("P1", this._projectNo, c, "FG", this._dateBegin, this._dateEnd);
        }

        #endregion
    }
}
