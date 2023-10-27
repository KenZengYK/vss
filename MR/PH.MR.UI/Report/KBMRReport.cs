using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.Report
{
    public partial class KBMRReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public KBMRReport()
        {
            InitializeComponent();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintMR();
        }
        private void PrintMR()
        {
            //string parameter = this.jobMRReport1.GetParameter();
            //DevExpress.XtraReports.UI.XtraReport report;
            //report=this.jobMRReport1.CreateReport(parameter);
            //report.DataSource = this.jobMRReport1.GetReportDataSource(parameter);
            //report.ShowPreviewDialog();

            string cono = this.jobKBMRReport1.Company;
            string project = this.jobKBMRReport1.ProjectNo;
            if (string.IsNullOrEmpty(project))
            {
                MessageBox.Show("Please input a Project No#.");
                return;
            }

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MR.BackEnd.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.MR.BackEnd.Job.JobKBMRReport).FullName;//報表全名
            data.JobName = string.Format("MR Report({0}):{1}", jobKBMRReport1.ReportOption, project);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.RunServer = "SL";
            data.Parameter = this.jobKBMRReport1.GetParameter();
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
