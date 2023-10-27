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
    public partial class JobLiabilityReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobLiabilityReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            //string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            //this.editSupplier.Properties.Items.Clear();

            //this.editSupplier.Properties.Items.Add(_all);

            //this.editSupplier.Properties.MaxLength = 4;

            //PH.BasicInfo.BO.ERPSupplierProfileList list = new PH.BasicInfo.BO.ERPSupplierProfileList();
            //PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();

            _detaillist = new PH.MIDc.BO.DetailList();
            _detaillist.CurrentDataContext.CommandTimeout = 2000;
            var supps = _detaillist.GetERPMIDcSuppliers(true);
            this.editSupplier.Properties.DataSource = supps;

            //  foreach (var item in list.GetAllData())
            //foreach (var item in supps)
            //{
            //    string matTypeSupp = item;// item.ERPSupplier;
            //    if (string.IsNullOrEmpty(matTypeSupp)) continue;
            //    if (string.IsNullOrEmpty(matTypeSupp.Trim())) continue;

            //    this.editSupplier.Properties.Items.Add(matTypeSupp);
            //}
        }

        //string _all = "ALL";
        string _param;

        string _supp;
        DateTime _dateBegin;
        DateTime _dateEnd;
        bool _groupStatusStudyRun;

        public string Supp
        {
            get { return (string)this.editSupplier.EditValue; }
        }
        public DateTime DateBegin
        {
            get { return this.editBegin.DateTime; }
        }
        public DateTime DateEnd
        {
            get { return this.editEnd.DateTime; }
        }
        public bool GroupStatusStudyRun
        {
            get { return this.editStatus.SelectedIndex == 0; }
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
            this._supp = ss[0];
            this._dateBegin = Convert.ToDateTime(ss[1]);
            this._dateEnd = Convert.ToDateTime(ss[2]);
            this._groupStatusStudyRun = Convert.ToBoolean(ss[3]);
        }

        #region IParameterSetControl Members

        public string GetParameter()
        {
            DateTime d1 = DateBegin;
            DateTime d2 = DateEnd;
            if (d1 == DateTime.MinValue) d1 = d2;
            if (d2 == DateTime.MinValue) d2 = d1;

            string s = string.Format("{0};{1};{2};{3}", Supp, d1, d2,GroupStatusStudyRun);
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobLiabilityReport ctl = new JobLiabilityReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editSupplier.EditValue = paras[0];
                ctl.editBegin.EditValue = Convert.ToDateTime(paras[1]);
                ctl.editEnd.EditValue = Convert.ToDateTime(paras[2]);
                ctl.editStatus.EditValue = Convert.ToBoolean(paras[3]);
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
            return new LiabilityReport(parameters);
        }

        public object GetReportDataSource(string parameters)
        {
            _detaillist = new PH.MIDc.BO.DetailList();
            return _detaillist.GetDetails(this._supp, this._dateBegin, this._dateEnd,this._groupStatusStudyRun);
        }

        #endregion
    }
}
