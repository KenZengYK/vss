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
    public partial class MaterialListbyMatTypeReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public MaterialListbyMatTypeReport()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.jobMaterialListbyMatTypeReport1.MaterialType))
            {
                MessageBox.Show("Please select a Material Type.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            PrintReport();
        }
        void PrintReport()
        {
            jobMaterialListbyMatTypeReport1.BackEndJob(jobMaterialListbyMatTypeReport1.GetParameter());
            if (jobMaterialListbyMatTypeReport1.Report != null && jobMaterialListbyMatTypeReport1.MaterialType != "--ALL--")
                jobMaterialListbyMatTypeReport1.Report.ShowPreviewDialog();
            return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MIDc.BackEnd.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.MIDc.BackEnd.JobMaterialListbyMatTypeReport).FullName;//報表全名
            data.JobName = string.Format("MaterialList:(MatType-{0}-{1})", jobMaterialListbyMatTypeReport1.MaterialType, jobMaterialListbyMatTypeReport1.GroupStatusStudyRun ? "Study,Check&Run-Gen" : "Hold");//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobMaterialListbyMatTypeReport1.GetParameter();
            data.RunServer = "SL";
            //PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            PH.Platform.BackEnd.BO.SJob.InsertData(data, true);
        }
    }
}
