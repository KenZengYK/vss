using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class LiabilityReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public LiabilityReport()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(this.jobLiabilityReport1.Supp))
            //{
            //    MessageBox.Show("Please select a Supplier.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            PrintReport();
        }
        void PrintReport()
        {
            //jobMaterialListbySuppReport1.BackEndJob(jobMaterialListbySuppReport1.GetParameter());
            //if (jobMaterialListbySuppReport1.Report != null && jobMaterialListbySuppReport1.Supp != "--ALL--")
            //    jobMaterialListbySuppReport1.Report.ShowPreviewDialog();
            //return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MIDc.BackEnd.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.MIDc.BackEnd.JobLiabilityReport).FullName;//報表全名
            data.JobName = string.Format("LiabilityReport");//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobLiabilityReport1.GetParameter();
            data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            //PH.Platform.BackEnd.BO.SJob.InsertData(data, true);
        }
    }
}
