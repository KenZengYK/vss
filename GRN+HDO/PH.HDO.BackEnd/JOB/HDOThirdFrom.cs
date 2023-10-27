using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.HDO.BO;

namespace PH.HDO.BackEnd.JOB
{
    public partial class HDOThirdFrom : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOThirdFrom()
        {
            InitializeComponent();
        }

        string _sparmer;

        public string SParmer
        {
            get { return _sparmer; }
            set { _sparmer = value; }
        }
        string _scompany;

        public string Company
        {
            get { return this.hdottxtcompany.Text; }
        }

        string _hdosFrom;

        public string HdoFrom
        {
            get { return this.hdottxtfrom.Text; }
        }

        string _hdosTo;

        public string HdoTo
        {
            get { return this.hdottxtto.Text; }
        }

        PH.HDO.BO.Command commds = new Command();
        #region IParameterSetControl 成员

        public string GetParameter()
        {
            string company = string.IsNullOrEmpty(this.hdotlblcompany.Text) ? "P1" : this.hdotlblcompany.Text;
            string hdoFrom = string.IsNullOrEmpty(this.hdotlblfrom.Text) ? this.hdotlblto.Text : this.hdotlblfrom.Text;
            string hdoTo = string.IsNullOrEmpty(this.hdotlblto.Text) ? this.hdotlblfrom.Text : this.hdotlblto.Text;
            string parem = string.Format("{0},{1},{2}", company, hdoFrom, hdoTo);
            return parem;
        }

        public UserControl ParameterControl(string parameters)
        {
            HDOThirdFrom hdothirF = new HDOThirdFrom();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                hdothirF.hdottxtcompany.Text = paras[0];
                hdothirF.hdottxtfrom.Text = paras[1];
                hdothirF.hdottxtto.Text = paras[2];
            }
            return hdothirF;
        }

        #endregion

        #region IServerReport 成员

        public int CheckDataSource(string parameters)
        {
            return -1;
        }

        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Getoamer(parameters);
            DevExpress.XtraReports.UI.XtraReport hdorpt;
            hdorpt = new PH.HDO.BackEnd.Report.HDOReportThird(_hdosFrom, _hdosTo);
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            hdorpt.ExportOptions.PrintPreview.DefaultFileName = string.Format("'{0}' - PH Garment Mfg Co Ltd (HK)", this.hdottxtcompany.Text);
            return hdorpt;
        }

        public object GetReportDataSource(string parameters)
        {
            return null;
        }



        #endregion
        private void Getoamer(string parameters)
        {
            this._sparmer = parameters;
            if (string.IsNullOrEmpty(_sparmer)) return;
            string[] c = new string[1] { "," };
            string[] ts = parameters.Split(c, StringSplitOptions.None);
            this._scompany = ts[0];
            if (ts.Length < 2) return;
            this._hdosFrom = ts[1];
            this._hdosTo = ts[2];
        }
    }
}
