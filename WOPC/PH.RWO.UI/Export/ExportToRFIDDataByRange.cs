using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class ExportToRFIDDataByRange : PH.Platform.UI.CS.UI0.BlankForm
    {
        public ExportToRFIDDataByRange()
        {
            InitializeComponent();
        }

        private void GetData()
        {
            //string param = this.jobExportToRFID1.GetParameter();
            //this.jobExportToRFID1.BackEndJob(param);
            //return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.JobExportToRFIDByRange).FullName;
            data.JobName = "ExportToRFID by Date Range"; //JOB名稱
            data.ProgramCode = this.SideProgramID;        //也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobExportToRFIDByRange1.GetParameter();
            data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SJob.InsertData(data);
        }

        private void btnGetData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
             GetData();
        }



    }
}
