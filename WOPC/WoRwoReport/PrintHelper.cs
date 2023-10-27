using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.RWO.BO;

namespace WoRwoReport
{
    public class PrintHelper
    {
        //reportType;langID;company;wo;color;roundno
        public PrintHelper(string parameters)
        {
            _company = "P1";
            _wo = "";
            _color = "";
            _langID = "EN";
            _roundNo = -1;
            _reportType = "WO";

            GetValues(parameters);
            InitLogin();


        }
        string _company;
        string _wo;
        string _color;
        string _langID;
        int _roundNo;
        string _reportType;

        private void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            //reportType; langID; company; wo; color; roundno

            this._reportType = ss[0];
            this._langID = ss[1];
            this._company = ss[2];
            this._wo = ss[3];
            this._color = ss[4];
            this._roundNo = Convert.ToInt32(ss[5]);

        }
        private void DoWO(string company, string wo, string langID)
        {
            WorkOrderList list = new WorkOrderList();
            WorkOrder obj = list.GetWorkOrder(wo);
            bool isSL = langID != "TH";
            PrintWorkOrderReport(obj, isSL);
        }
        private void DoRWO(string company, string wo, string color, int roundno, string langID)
        {
            RoundWorkOrderList list = new RoundWorkOrderList();
            RoundWorkOrder obj = list.GetRoundWorkOrder(wo, color, roundno);
            bool isSL = langID != "TH";
            PrintRoundWorkOrderReport(obj, isSL);
        }

        private void InitLogin()
        {
            PH.Platform.AuthMgr.BO.LoginManager manager = new PH.Platform.AuthMgr.BO.LoginManager();
            PH.Platform.AuthMgr.BO.Auth_User user;
            PH.Platform.AuthMgr.BO.LoginUserStatus status = manager.ValidateLogin("rwo", "rwo", _langID, out user);
            // _Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            // _Context.CommandTimeout = 1000;
        }
        public void PrintReport()
        {
            bool isWOReport = (_reportType == "WO");
            if (isWOReport)
                DoWO(_company, _wo, _langID);
            else
                DoRWO(_company, _wo, _color, _roundNo, _langID);
        }
        private void PrintWorkOrderReport(WorkOrder wo, bool isSL)
        {
            if (wo == null) return;
            string cust = wo.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            if (isSL)
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderReport).FullName;//報表全名
            else //KB
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("WO({0}) Report", wo.WorkOrderNo);//JOB名稱 
            data.ProgramCode = "P000087";//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1}", wo.WorkOrderNo, cust.Trim()); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
        private void PrintRoundWorkOrderReport(RoundWorkOrder rwo, bool isSL)
        {
            if (rwo == null) return;
            string cust = rwo.WorkOrderColor.WorkOrder.Project.Customer;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            if (isSL)
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderReport).FullName;//報表全名
            else
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobRoundWorkOrderKBReport).FullName;//報表全名

            data.JobName = string.Format("RWO({0}-{1}) Report", rwo.WorkOrderNo, rwo.RoundNo);//JOB名稱 
            data.ProgramCode = "P000087";//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", rwo.WorkOrderNo, cust.Trim(), rwo.ColorCode, rwo.RoundNo); //執行數據源時候需要使用的參數
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
