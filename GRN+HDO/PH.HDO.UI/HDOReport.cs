using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BackEnd.BO;
using PH.Platform.UI.CS.UI0;

namespace PH.HDO.UI
{
    public partial class HDOReport : BlankForm
    {
        public HDOReport()
        {
            InitializeComponent();
            this.bar1.Visible = false;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintReport();
        }


        private void PrintReport()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.HDO.BackEnd.DLL";//
            data.ClassFullName = typeof(PH.HDO.BackEnd.HDOFrom).FullName;//ȫ��
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//�û�
            data.Parameter = hdoFrom1.GetParameter();
            if (string.IsNullOrEmpty(data.Parameter)) 
            {
                MessageBox.Show("����������");
                return;
            }
           
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
