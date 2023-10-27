using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI.Report
{
    public partial class OrderDetailReport : PH.Platform.UI.CS.UI0.PrintBaseForm
    {
        public OrderDetailReport()
        {
            InitializeComponent();
        }

        private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.orderDetail1.GetReportType == 1)
            {
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobOrderDetail).FullName;//報表全名
                data.JobName = "Order Detail";
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = this.orderDetail1.GetParameter();
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            }
            else if (this.orderDetail1.GetReportType == 2)
            {
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
                data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.JobOrderDetailShip).FullName;//報表全名
                data.JobName = "Order Detail Ship";
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = this.orderDetail1.GetParameter();
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            }
        }
        
    }
}
