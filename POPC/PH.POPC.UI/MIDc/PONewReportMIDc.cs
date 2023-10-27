using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class PONewReportMIDc : PH.Platform.UI.CS.UI0.BlankForm
    {
        public PONewReportMIDc()
        {
            InitializeComponent();
            _region = "SL";
            this.jobNewMIDcPOReport1.JobHandle += new PH.POPC.BO.BackEndEventHandler(jobNewPOReport1_JobHandle);
        }
        void jobNewPOReport1_JobHandle(object sender, PH.POPC.BO.BackEndEventArgs e)
        {
            Print();
        }
        string _region;//KB,SL,HK
        public PONewReportMIDc(string region)
        {
            InitializeComponent();
            this._region = region;
        }
        private void btnPrint_Click(object sender, EventArgs e)
        {
            Print();
        }
        private void Print()
        {
            this.jobNewMIDcPOReport1.Area = _region;

            string cono = this.jobNewMIDcPOReport1.CONO;
            string pono = this.jobNewMIDcPOReport1.PONO;
            if (string.IsNullOrEmpty(pono))
            {
                MessageBox.Show("Please input a PO No#.");
                return;
            }
                      

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.POPC.BackEnd.JobNewMIDcPOReport";//報表全名
            data.JobName = string.Format("PO Report-{0}", pono);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.RunServer = "SL";
            data.Parameter = this.jobNewMIDcPOReport1.GetParameter();
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
        private void btnPrintReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Print();
        }
    }
}
