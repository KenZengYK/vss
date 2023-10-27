using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using PH.POPC.BackEnd;
using PH.POPC.BO;
using DevExpress.Utils;

namespace PH.POPC.UI
{
    public partial class GRNReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public GRNReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;


        }
        void jobNewPOReport1_JobHandle(object sender, PH.POPC.BO.BackEndEventArgs e)
        {
            Print();
        }
        string _region;//KB,SL,HK
        public GRNReport(string region)
        {
            InitializeComponent();
            this._region = region;
        }

        private void Print()
        {
            if (jobGRNReport1.ETDFrom==DateTime.MinValue)
            {
                MessageBox.Show("Please input a actual ETD Date (From).");
                return;
            }
            if (jobGRNReport1.ETDTo == DateTime.MinValue)
            {
                MessageBox.Show("Please input a actual ETD Date (To).");
                return;
            }

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.POPC.BackEnd.JobGRNReport";//報表全名
            data.JobName = string.Format("POPC Non GRN Report");//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.RunServer = "SL";
            data.Parameter = this.jobGRNReport1.GetParameter();
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
        private void btnPrintReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Print();
        }
 

    }
}
