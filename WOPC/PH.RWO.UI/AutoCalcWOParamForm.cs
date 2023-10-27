using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.RWO.UI
{
    public partial class AutoCalcWOParamForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public AutoCalcWOParamForm()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDate.Text))
            {
                MessageBox.Show("Must input start date !");
                return;
            }
            GetData();
        }

        private void GetData()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";
            data.ClassFullName = typeof(PH.RWO.BackEnd.JobAutoCalcWoParam).FullName;
            data.JobName = string.Format("Auto Calc WO By Param: {0}", txtDate.DateTime.Date);
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            data.Parameter = txtDate.DateTime.Date.ToString();
            data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SJob.InsertData(data);
        }
    }
}