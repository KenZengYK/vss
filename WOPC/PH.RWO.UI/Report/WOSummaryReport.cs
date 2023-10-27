using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI.Report
{
    public partial class WOSummaryReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public WOSummaryReport()
        {
            InitializeComponent();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintReport();
        }

        private void PrintReport()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWOSummaryReport).FullName;//報表全名
            data.JobName = string.Format("Work Order Summary");//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobWOSummaryReport1.GetParameter();
            //data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

        }
    }
}
