using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI0;
using PH.Platform.BO;
namespace PH.HDO.UI.HDOSummary
{
    public partial class HDOSumaryFrm : BlankForm
    {
        public HDOSumaryFrm()
        {
            InitializeComponent();
        }
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        private void barButton_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.HDO.BackEnd.DLL";//
            data.ClassFullName = typeof(PH.HDO.BackEnd.JOB.HDOSummaryForm).FullName;//靡
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//蚚誧
            data.Parameter =hdoSummaryForm2.GetParameter();
            if (string.IsNullOrEmpty(data.Parameter))
            {
                MessageBox.Show("请输入查询条件");
                return;
            }
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
