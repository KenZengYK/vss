using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.HDO.BackEnd.JOB
{
    public partial class HDOSumFrom : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOSumFrom()
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
            get { return this.hdotxtcompany.Text; }
        }

        string _hdosFrom;

        public string HdoFrom
        {
            get { return this.hdotxtfrom.Text; }
        }

        string _hdosTo;

        public string HdoTo
        {
            get { return this.hdotxtto.Text; }
        }

        int _rdoche;

        public int Rdoche
        {
            get { return _rdoche; }
            set { _rdoche = value; }
        }

        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
        #region IParameterSetControl 成员

        public string GetParameter()
        {
            int rdoched;
            string company = string.IsNullOrEmpty(this.hdotxtcompany.Text) ? "P1" : this.hdotxtcompany.Text;
            string hdoFrom = string.IsNullOrEmpty(this.hdotxtfrom.Text) ? this.hdotxtto.Text : this.hdotxtfrom.Text;
            string hdoTo = string.IsNullOrEmpty(this.hdotxtto.Text) ? this.hdotxtfrom.Text : this.hdotxtto.Text;
            if (string.IsNullOrEmpty(hdoFrom)) return null;
            if (rdoones.Checked) rdoched = 1;
            else if (rdotwos.Checked) rdoched = 2;
            else if (rdotree.Checked) rdoched = 3;
            else rdoched = 0;
            string parem = string.Format("{0},{1},{2},{3}", company, hdoFrom, hdoTo,rdoched);
            return parem;
        }

        public UserControl ParameterControl(string parameters)
        {
            HDOSumFrom hdosfrom = new HDOSumFrom();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                hdosfrom.hdotxtcompany.Text = paras[0];
                hdosfrom.hdotxtfrom.Text = paras[1];
                hdosfrom.hdotxtto.Text = paras[2];

            }
            return hdosfrom;
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
            hdorpt = new PH.HDO.BackEnd.Report.HDOSumReport(_hdosFrom, _hdosTo,_scompany);
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            hdorpt.ExportOptions.PrintPreview.DefaultFileName = "HDO-Summary"; //string.Format("'{0}' - PH Garment Mfg Co Ltd (HK)", this.hdotxtcompany.Text);
            return hdorpt;
        }

        public object GetReportDataSource(string parameters)
        {
            return commd.Gettemp1list(_scompany, _hdosFrom, _hdosTo,_rdoche);
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
            this._rdoche = Convert.ToInt32(ts[3]);
        }
    }
}
