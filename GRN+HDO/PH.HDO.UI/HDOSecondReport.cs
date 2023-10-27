using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI0;
using PH.Platform.BO;

namespace PH.HDO.UI
{
    public partial class HDOSecondReport : BlankForm
    {
        public HDOSecondReport()
        {
            InitializeComponent();
            this.bar1.Visible = false;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
           
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.HDO.BackEnd.DLL";//
            data.ClassFullName = typeof(PH.HDO.BackEnd.JOB.HDOSumFrom).FullName;//全名
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//用户
            data.Parameter = hdoSecondFrom1.GetParameter();
            if (string.IsNullOrEmpty(data.Parameter))
            {
                MessageBox.Show("请输入条件！");
                return;
            }
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
