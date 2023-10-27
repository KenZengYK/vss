using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.BackEnd
{
    public partial class JobGetAS400Data : UserControl, PH.Platform.BackEnd.BO.IServerJob, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public string SalesOrderNo { get { return editOrdn.Text; } }
        public string ProjectNo { get { return this.editProject.Text; } }

        public JobGetAS400Data()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return; 
            string location = PH.Platform.Common.SysParamHelper.Instance.Location;
            if (!string.IsNullOrEmpty(location) && location == "KB")
                this.groupControl1.Visible = false;
        }

        #region IServerJob Members

        public void BackEndJob(string parameters)
        {
            //System.Diagnostics.Trace.WriteLine("1");
            string[] paras = parameters.Split(',');
            if (paras[0] == string.Empty || paras[1] == string.Empty) return;
            //PH.WIP.BO.Data data = new PH.WIP.BO.Data(paras[0], Convert.ToDateTime(paras[1]), paras[2]);
            //data.CreateData();

            //System.Diagnostics.Trace.WriteLine("2");
            string cono = paras[0];
            string ordn = paras[1];
            DateTime d = DateTime.Now;
            int dt = Convert.ToInt32(d.ToString("yyyyMMdd"));
            string tm = d.ToString("HHmmssfff");

            //System.Diagnostics.Trace.WriteLine("3");
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            context.CommandTimeout = 18000;
            context.Sp_GetAS400Data(dt, tm, cono, ordn);
            //System.Diagnostics.Trace.WriteLine("4");
        }

        #endregion

        #region IParameterSetControl Members
        public string GetParameter()
        {
            return string.Format("{0},{1}", this.editCompany.Text, this.editOrdn.Text);
        }


        public UserControl ParameterControl(string parameters)
        {
            JobGetAS400Data ctl = new JobGetAS400Data();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(',');
                ctl.editCompany.EditValue = paras[0];
                ctl.editOrdn.EditValue = paras[1];
            }
            return ctl;
        }
        #endregion

        private void btnGetSO_Click(object sender, EventArgs e)
        {
            string location = PH.Platform.Common.SysParamHelper.Instance.Location;
            if (!string.IsNullOrEmpty(location) && location == "KB")
            {
                MessageBox.Show("Cannot use this function in KB, please enter Sales Order No.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            string cono = this.editCompany.Text;
            string project = this.editProject.Text;
            if (string.IsNullOrEmpty(project))
            {
                MessageBox.Show("please input Project No.");
                return;
            }

            string ordn = "";
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            context.CommandTimeout = 18000;

            string sql = string.Format("SELECT ORDN40 from openquery([as400], 'select distinct CUSO40,ORDN40 from ault4f1.oep40 where CONO40=''{0}'' and  CUSO40=''{1}''  ')", cono, project);
            var aa = context.ExecuteQuery<string>(sql);
            foreach (string item in aa)
            {
                ordn = item;
            }

            this.editOrdn.Text = ordn;
        }


    }
}
