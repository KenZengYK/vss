using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;

namespace PH.MR.UI.Packing
{
    public partial class GetMRFromERP : PH.Platform.UI.CS.UI0.BlankForm
    {
        private string _cono = null;
        private string _projectNO = null;

        public GetMRFromERP()
        {
            InitializeComponent();
        }


        private void btnMRGetData_Click(object sender, EventArgs e)
        {
            if (!CheckInput("DeliveryDate"))
            {
                return;
            }

            //Xsj:Create BackEnd Job
            CreateBackEndJob();
        }



        //Xsj:驗證輸入
        private bool CheckInput(string PrintType)
        {
            bool result = true;
            string conditionType = this.radioGroupPrintCondition.EditValue.ToString();
            switch (conditionType.ToLower())
            {
                case "bydate":
                    result = CheckConditionByDate();
                    break;
                case "byprojectno":
                    result = CheckConditionByProject();
                    break;
            }
            return result;
        }

        private bool CheckConditionByDate()
        {
            bool result = true;

            if (this.dateEdit_From.EditValue == null)
            {
                MessageBox.Show("請輸入[From Date]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.dateEdit_From.Focus();
                result = false;
            }
            else if (this.dateEdit_TO.EditValue == null)
            {
                MessageBox.Show("請輸入[TO Date]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.dateEdit_TO.Focus();
                result = false;
            }

            DateTime fromDay = Convert.ToDateTime(this.dateEdit_From.EditValue);
            DateTime toDay = Convert.ToDateTime(this.dateEdit_TO.EditValue);

            if (fromDay > toDay)
            {
                MessageBox.Show("[From Day]必須 <= [TO Day]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                result = false;
            }
            return result;
        }

        private bool CheckConditionByProject()
        {
            bool result = true;
            if (this.tEdit_ProjectNO.EditValue == null || this.tEdit_ProjectNO.EditValue.ToString().Trim() == "")
            {
                MessageBox.Show("請輸入[Project NO]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.tEdit_ProjectNO.Focus();
                result = false;
            }
            return result;
        }


        //Xsj20150822:add
        private void CreateBackEndJob()
        {
            //Xsj:啟用後臺作業任務
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.MR.BackEnd.dll";
            data.ClassFullName = typeof(PH.MR.BackEnd.Job.JobPackingWithMR).FullName;
            data.JobName = "MR And Packing Weight Compare";
            data.ProgramCode = this.SideProgramID;
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            data.Parameter = GetRptConition();
            PH.Platform.BackEnd.BO.SJob.InsertData(data);


            ////Xsj:即時測試
            //PH.MR.BackEnd.Job.JobPackingWithMR jb = new PH.MR.BackEnd.Job.JobPackingWithMR();
            //string param = GetRptConition();
            //jb.Testing(param);

        }

        //Xsj:獲取報表條件
        private string GetRptConition()
        {
            string rptCondition = "";
            string conditionType = this.radioGroupPrintCondition.EditValue.ToString();
            switch (conditionType.ToLower())
            {
                case "bydate":
                    string fromDay = ((DateTime)this.dateEdit_From.EditValue).ToString("yyyyMMdd");
                    string toDay = ((DateTime)this.dateEdit_TO.EditValue).ToString("yyyyMMdd");
                    rptCondition="bydate,"+ fromDay + "," + toDay;
                    break;
                case "byprojectno":
                    string projectNOs= this.tEdit_ProjectNO.EditValue.ToString();
                    rptCondition = "byprojectno," + projectNOs;
                    break;
            }
            return rptCondition;
        }

        private void radioGroupPrintCondition_SelectedIndexChanged(object sender, EventArgs e)
        {
            string conditionType = this.radioGroupPrintCondition.EditValue.ToString();
            switch (conditionType.ToLower())
            {
                case "bydate":
                    this.tb_PrintCondition.SelectedTabPage = this.tPage_ByDate;
                    break;
                case "byprojectno":
                    this.tb_PrintCondition.SelectedTabPage = this.tPage_ByProjectNO;
                    break;
            }

        } 
    }
}
