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
    public partial class HDOStockBalanceFrm : BlankForm
    {
        public HDOStockBalanceFrm()
        {
            InitializeComponent();
            this.bar1.Visible = false;
        }
        private PH.HDO.BO.HDODataContext context = ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.HDO.BackEnd.DLL";//
            data.ClassFullName = typeof(PH.HDO.BackEnd.JOB.HDOStockForm).FullName;//靡
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//蚚誧
            data.Parameter = hdoStockForm1.GetParameter();
            if (string.IsNullOrEmpty(data.Parameter))
            {
                MessageBox.Show("请输入查询条件");
                return;
            }
             string[] ts =data.Parameter.Split(',');
             string StockRoom = ts[0];
             if (ts.Length < 2) return;
             string Material_Group = ts[1].ToString();
             string Invoice = ts[2].ToString();
             string Location = ts[3].ToString();
             string MaterialName = ts[4].ToString();
             string ProjectNo = ts[5].ToString();
             string date1 = ts[6].ToString();
             string date2 = ts[7].ToString();
             context.ExecuteCommand(string.Format(@"insert into StockBalanceLog(Id,UserId,StartDate,EndDate,StockRoom,MaterialGroup,Invoice,Location,MaterialName,ProjectNo,PrintDate) 
                   values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')",Guid.NewGuid(),data.UserID,date1,date2,StockRoom,Material_Group,Invoice,Location,MaterialName,ProjectNo,DateTime.Now));
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
    }
}
