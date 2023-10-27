using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class LiabilityReport : DevExpress.XtraReports.UI.XtraReport
    {
        public LiabilityReport(string parameters)
        {
            InitializeComponent();
            GetValues(parameters);
        }

        string _param;

        string _supp;
        DateTime _dateBegin;
        DateTime _dateEnd;

        private bool _groupStatusStudyRun;
        public bool GroupStatusStudyRun
        {
            get { return _groupStatusStudyRun; }
            set
            {
                _groupStatusStudyRun = value;

                this.lbStatus.Text = (_groupStatusStudyRun) ? "- Study, Test && Run" : "- Hold, Stop && Drop";

                this.lbSupp.Visible = !string.IsNullOrEmpty(_supp);
            }
        }


        public void GetValues(string parameters)
        {
            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._supp = ss[0];
            _supp = (_supp == "ALL Supp") ? "" : _supp;
            this._dateBegin = Convert.ToDateTime(ss[1]);
            this._dateEnd = Convert.ToDateTime(ss[2]);
            this.GroupStatusStudyRun = Convert.ToBoolean(ss[3]);

        }


    }
}
