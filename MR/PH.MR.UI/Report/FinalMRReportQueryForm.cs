using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MR.BO;
using System.Linq;
using PH.Platform.BO;
using PH.MR.BackEnd.Job;

namespace PH.MR.UI.Report
{
    public partial class FinalMRReportQueryForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public FinalMRReportQueryForm()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (Checked()) 
            {
                PH.MR.BO.MRDataContext db= ContextBuilder.CreateContext<MRDataContext>();


                string StrSql = @"select  a.ProjectNo, 
                                            case when exists(select 1 from [PH.MR]..AnticipantMR as b where b.ProjectNo = a.ProjectNo) then 'Initial MR' else 'Final MR' end as HasAnticipantMR,
                                            case when Status = 'C'  then   'Completed'   else    'Outstanding'   end as IsCompleted
                                            from  (select distinct ProjectNo, Status from [PH.RWO1]..Project  where SOIssueDate >= '{0}' and SOIssueDate < '{1}' ) as a";


//                string StrSql = @"select  a.ProjectNo, 
//                                            case when exists(select 1 from [PH.MR]..AnticipantMR as b where b.ProjectNo = a.ProjectNo) then 'Initial MR' else 'Final MR' end as HasAnticipantMR,
//                                            case when Status = 'C'  then (case when not  exists(select 1 from [PH.MR]..AnticipantMR as b where b.ProjectNo = a.ProjectNo)  then  'Completed'  else  'Outstanding'  end )  else   (case when not  exists(select 1 from [PH.MR]..AnticipantMR as b where b.ProjectNo = a.ProjectNo)  then  'Outstanding'  else  'Outstanding'  end )  end as IsCompleted
//                                            from  (select distinct ProjectNo, Status from [PH.RWO1]..Project  where SOIssueDate >= '{0}' and SOIssueDate < '{1}' ) as a";

                StrSql = string.Format(StrSql, this.devStartDate.DateTime.ToString(), this.devEndDate.DateTime.AddDays(1).ToString());

                List<FinalMRReportQueryProjectClass> List = db.ExecuteDataSet(StrSql, new DataSet(), "Opts").Tables[0].AsEnumerable().Select(dr => new FinalMRReportQueryProjectClass
                {
                    ProjectNo = dr["ProjectNo"].ToString(),
                    Status = dr["HasAnticipantMR"].ToString(), 
                    IsCompleted=dr["IsCompleted"].ToString()
                }).OrderBy(p=>p.ProjectNo).ToList();

                FinalMRReportQueryProjectForm frmProject = new FinalMRReportQueryProjectForm(List);
                frmProject.ShowDialog();

                if (frmProject.AParameter != "")
                {
                    PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                    data.AssemblyName = "PH.MR.BackEnd.dll";
                    data.ClassFullName = typeof(JobFinalMR).FullName;
                    data.JobName = "Final MR Report";
                    data.ProgramCode = this.SideProgramID; ;
                    data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    data.Parameter = frmProject.AParameter;
                    data.RunServer = "SL";
                    
                    PH.Platform.BackEnd.BO.SReport.InsertData(data);
                }
                //PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                //data.AssemblyName = "PH.MR.BackEnd.dll";
                //data.ClassFullName = typeof(PH.MR.BackEnd.Job.JobPackingWithMR).FullName;
                //data.JobName = "MR And Packing Weight Compare";
                //data.ProgramCode = this.SideProgramID;
                //data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                //data.Parameter = GetRptConition();
                //PH.Platform.BackEnd.BO.SJob.InsertData(data);



                //PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                //data.AssemblyName = "PH.MR.BackEnd.dll";　//當前dll全名
                //data.ClassFullName = typeof(PH.MR.BackEnd.Job.JobKBMRReport).FullName;//報表全名
                //data.JobName = string.Format("MR Report({0}):{1}", jobKBMRReport1.ReportOption, project);//JOB名稱
                //data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                //data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                //data.RunServer = "SL";
                //data.Parameter = this.jobKBMRReport1.GetParameter();
                //PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

              
                
                //db.ExecuteQuery<FinalMRReportQueryProjectClass>(StrSql);

            }
        }

        bool Checked() 
        {
            if (this.devStartDate.Text == "")
            {
                MessageBox.Show("The Start date cannot be empty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false; 
            }
            if (this.devStartDate.Text == "")
            {
                MessageBox.Show("The End date cannot be empty","Tips",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return false;
            }
            if (this.devEndDate.DateTime < this.devStartDate.DateTime)
            {
                MessageBox.Show("The Start date cannot be greater than the end date", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }
    }
}