using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.SPC.BackEnd;

namespace PH.SPC.UI
{
    public partial class SampleApprovalAnalyseReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SampleApprovalAnalyseReport()
        {
            InitializeComponent();
        }
        private void btnPrintSum_Click(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintSummary();
        }
        private void PrintSummary()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.SPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.SPC.BackEnd.ReportJob.JobSampleApprovalAnalyseReport";//報表全名
            data.JobName = "樣辦批核通過率分析";//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobSampleApprovalAnalyseReport1.GetParameter();
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }


    }
}
