using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI.Report
{
    public partial class ExReport : PH.Platform.UI.CS.JobBaseForm
    {
        public ExReport()
        {
            InitializeComponent();
        }



        public override void Execute()
        {
            base.Execute();

            //this.UserID;
            //this.PassWord;
            //this.LangID;
            //this.AssemblyName;
            //this.ClassName;
            //this.JobParam;
            PrintReport();
        }


        void PrintReport()
        {
            //D:\Project-ORM2\Release>PH.Platform.PHWinApp.exe "Admin" "Admin123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport"  "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,W079890"
            //D:\Project-ORM2\Release>PH.Platform.PHWinApp.exe "Admin" "Admin123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport"  "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,W079890;B40;1"

            string[] c = new string[1] { "," };
            string[] ss = this.JobParam.Split(c, StringSplitOptions.None);
            string assemblyName = ss[0];
            string className = ss[1];
            string param = ss[2];
            //MessageBox.Show(JobParam);

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = assemblyName;// "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = className;// typeof(PH.RWO.BackEnd.ReportJob.JobWOReport).FullName;//報表全名
            //data.JobName = string.Format("WO({0}) Report", jobWOReport1.WorkOrderNo);//JOB名稱 
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = UserID;// PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = param;// this.jobWOReport1.GetParameter();
            //data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
