using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BackEnd;
namespace PH.HDO.BackEnd.JOB
{
    public partial class HDOSummaryForm : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerReport
    {
        public HDOSummaryForm()
        {
            InitializeComponent();
        }
        private string _StockRoom;
        PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
        string _sparmer;

        public string SParmer
        {
            get { return _sparmer; }
            set { _sparmer = value; }
        }
        public string GetParameter()
        {
            string StockRoom = this.textStockRoom.Text;
            string parem = string.Format("{0}",StockRoom);
            return parem;
        }
        public UserControl ParameterControl(string parameters)
        {
            HDOSummaryForm hdosfrom = new HDOSummaryForm();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                hdosfrom.textStockRoom.Text = paras[0];
            }
            return hdosfrom;
        }
        public object GetReportDataSource(string parameters)
        {
            return commd.GetStockSummary(this._StockRoom);
        }
        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            Getoamer(parameters);
            DevExpress.XtraReports.UI.XtraReport hdorpt;
            hdorpt = new PH.HDO.BackEnd.Report.HDOStockSummmaryRpt(_StockRoom);
            hdorpt.PrintingSystem.ShowMarginsWarning = false;
            hdorpt.PrintingSystem.ContinuousPageNumbering = true;
            return hdorpt;
        }

        private void Getoamer(string parameters)
        {
            this._sparmer = parameters;
            if (string.IsNullOrEmpty(_sparmer)) return;
            string[] ts = parameters.Split(',');
            this._StockRoom = ts[0]; 
        }
    }
}
