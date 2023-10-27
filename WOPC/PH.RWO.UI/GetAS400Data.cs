using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class GetAS400Data : PH.Platform.UI.CS.UI0.BlankForm
    {
        public GetAS400Data()
        {
            InitializeComponent();
            string ss = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            simpleButton1.Visible =  (ss == "peter" || ss == "peterzhou");
            InitMemo();
        }

        //Xsj20150901:Start BackEnd Running Apply.
        private void GetData()
        {
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.JobGetAS400Data).FullName;
            data.JobName = string.Format("Get WO/RWO-SO:{0} {1}", this.jobGetAS400Data1.SalesOrderNo, this.jobGetAS400Data1.ProjectNo); //JOB名稱
            data.ProgramCode = this.SideProgramID;        //也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //當前使用的用戶，可以通過平臺找到
            data.Parameter = this.jobGetAS400Data1.GetParameter();
            data.RunServer = "SL";
            PH.Platform.BackEnd.BO.SJob.InsertData(data);
        }

        //Xsj20150901:Get data from erp button click event.
        private void btnGetData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string so = this.jobGetAS400Data1.SalesOrderNo;

            if (string.IsNullOrEmpty(so))
            {
                MessageBox.Show("Must input Sales Order No !");
                return;
            }
            GetData();
        }

        private void InitMemo()
        {
            _memo = new DevExpress.XtraEditors.MemoEdit();
            int x = 10;
            int y = this.jobGetAS400Data1.Location.Y + this.jobGetAS400Data1.Height + 10;

            _memo.Location = new Point(x, y);
            _memo.Size = new Size(200, 200);
            this.Controls.Add(_memo);

            _memo.Visible = simpleButton1.Visible;
        }
        DevExpress.XtraEditors.MemoEdit _memo;
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //string ss = PH.Platform.AuthMgr.BO.Environment.Instance.SysteParameter.Environment;

            //MessageBox.Show(ss);
            //return;

            //PH.RWO.BO.DataHelper h = new PH.RWO.BO.DataHelper();
            //var aa = h.GetCustomerCode();
            //string sql = "";
            //foreach (PH.RWO.BO.CustomerCode c in aa)
            //{
            //    sql += string.Format("INSERT INTO ZPHLIB_AUL.CUSTOMERS(Customer,CustomerCode,Team) VALUES('{0}','{1}','{2}')\r\n",c.Customer,c.CustomerCode1,c.Team);
            //}

            PH.RWO.BO.DictionaryList list = new PH.RWO.BO.DictionaryList();
            var a1 = list.GetDataDictionary("PH.QNReport.ProductCode");
            string sql = "";
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a1)
            {
                sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}',N'{2}','{3}')\r\n",
                    GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            }

            //var a1 = list.GetDataDictionary("PH.WO.SizeMatrix");
            //string sql = "";
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a1)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}
            //var a2 = list.GetDataDictionary("PH.WO.SizeMatrix_KB");
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a2)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}

            //var a3 = list.GetDataDictionary("PH.WO.BulkSOQty");
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a3)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}
            //var a4 = list.GetDataDictionary("PH.WO.BulkSOQty_KB");
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a4)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}

            //var a5 = list.GetDataDictionary("PH.WO.SampleDesptach");
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a5)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}
            //var a6 = list.GetDataDictionary("PH.WO.SampleDesptach_KB");
            //foreach (PH.Platform.Misc.BO.Misc_DataDictionary c in a6)
            //{
            //    sql += string.Format("INSERT INTO [PH.Platform.Misc].[dbo].[Misc_DataDictionary]([DataCode] ,[DataType],[DataName],[Description]) VALUES('{0}','{1}','{2}','{3}')\r\n",
            //        GetSQLString(c.DataCode), GetSQLString(c.DataType), GetSQLString(c.DataName), GetSQLString(c.Description));
            //}

            _memo.Text = sql;

        }

        private string GetSQLString(string value)
        {
            if (string.IsNullOrEmpty(value)) return value;
            return value.Replace("'", "''");
        }

    }
}
