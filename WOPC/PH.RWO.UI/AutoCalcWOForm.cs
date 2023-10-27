using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class AutoCalcWOForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public AutoCalcWOForm()
        {
            InitializeComponent();
        }

        private void btnExecute_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (string.IsNullOrEmpty(jobAutoCalcWO1.txtDate.Text))
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
            data.ClassFullName = typeof(PH.RWO.BackEnd.JobAutoCalcWO).FullName;
            data.JobName = string.Format("Auto Calc WO: {0}", jobAutoCalcWO1.txtDate.DateTime.Date);
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            data.Parameter = this.jobAutoCalcWO1.GetParameter();
            data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SJob.InsertData(data);
        }
    }
}
