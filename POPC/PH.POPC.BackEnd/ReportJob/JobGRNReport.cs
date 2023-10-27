using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;

namespace PH.POPC.BackEnd
{
    public partial class JobGRNReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobGRNReport()
        {
            InitializeComponent();

            // if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;
        }

        #region IServerReport Members

        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        DateTime _etdFrom;
        DateTime _etdTo;
        string _param;

        public DateTime ETDFrom
        { get { return this.deFrom.DateTime; } }
        public DateTime ETDTo
        { get { return this.deTo.DateTime; } }


        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            _etdFrom = Convert.ToDateTime(ss[0]);
            _etdTo = Convert.ToDateTime(ss[1]);

        }


        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            this._param = parameters;
            GetValues(parameters);

            DevExpress.XtraReports.UI.XtraReport report = null;

            report = new PH.POPC.BackEnd.POPCNewformat.GRNReport(_etdFrom, _etdTo);

            return report;

        }

        public object GetReportDataSource(string parameters)
        {
            POChangesMonitorList list = new POChangesMonitorList();

            return list.GetPOChangesMonitors(_etdFrom, _etdTo);
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string s = string.Format("{0:yyyy/MM/dd};{1:yyyy/MM/dd}", ETDFrom, ETDTo);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobGRNReport ctl = new JobGRNReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.deFrom.EditValue = Convert.ToDateTime(paras[0]);
                ctl.deTo.EditValue = Convert.ToDateTime(paras[1]);
            }
            return ctl;
        }

        #endregion


    }
}
