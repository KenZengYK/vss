using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;
using PH.PHGDB2.BO;
using PH.Platform.BO;

namespace PH.HDO.UI.SaveExecel
{
    public partial class SaveMaterialForm : PH.Platform.UI.CS.UI2.ListForm
    {

        PHGDB2DataContext db = ContextBuilder.CreateContext<PHGDB2DataContext>();

        public SaveMaterialForm()
        {
            InitializeComponent();

            if (this.DataContext == null)
            {
                this.DataContext = db;
            }

        }

        DataTable dt_FL = new DataTable();
        DataTable dt_TL = new DataTable();
        int Fl = 0;
        int Tl = 0;

        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = "c:\\";//注意这里写路径时要用c:\\而不是c:\
            openFileDialog.Filter = "(*.xlsx,*.xls)|.xlsx;*.xls";
            openFileDialog.RestoreDirectory = true;
            openFileDialog.FilterIndex = 1;
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {

                int len = openFileDialog.FileName.ToString().Trim().Length;

                DataTable dt = InputExcel(openFileDialog.FileName, "", openFileDialog.FileName.Trim());

                if (dt == null) return;

                int td = dt.Rows.Count;

                string AInsertFlag = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID + DateTime.Now.ToString("yyyyMMddHHmmss");

                int AFlagTime = db.GetMaterialDatas.Where(p => p.InsertFlag == AInsertFlag).Count() == 0 ? 0 : db.GetMaterialDatas.Where(p => p.InsertFlag == AInsertFlag).Select(p => p.FlagTime ?? 0).Max();


                List<string> columnNameList = new List<string>();
                foreach (DataColumn col in dt.Columns)
                {
                    columnNameList.Add(col.ColumnName);//获取到DataColumn列对象的列名
                }

                string WO = columnNameList.Where(p => p.Contains("WO") || p.Contains("Wo")).FirstOrDefault();

                if (string.IsNullOrEmpty(WO))
                {
                    MessageBox.Show("請檢查導入的Execl表格，Sheet1工作表中是否存在''WO No.''的字段 （需要該工作表有一欄位名稱爲：''WO No.''，請將有'Wo'的欄位名稱改成'' WO No. '', 否則系統無法識別）", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                foreach (DataRow row in dt.Rows)
                {
                    GetMaterialData obj = new GetMaterialData();
                    obj.InsertFlag = AInsertFlag;
                    obj.WO = row[WO].ToString();
                    obj.FlagTime = AFlagTime + 1;

                    db.GetMaterialDatas.InsertOnSubmit(obj);

                }


                db.SubmitChanges();


                string SqlStr_FL = "exec sp_Material_FL '{0}',{1}";
                SqlStr_FL = string.Format(SqlStr_FL, AInsertFlag, AFlagTime + 1);


                string SqlStr_TL = "exec sp_Material_TL '{0}',{1}";
                SqlStr_TL = string.Format(SqlStr_TL, AInsertFlag, AFlagTime + 1);

                db.CommandTimeout = 9999;

                dt_FL = db.ExecuteDataSet(SqlStr_FL, new DataSet(), "Opts").Tables[0];
                dt_TL = db.ExecuteDataSet(SqlStr_TL, new DataSet(), "Opts").Tables[0];

                Fl = dt_FL.Rows.Count;
                Tl = dt_TL.Rows.Count;



                //this.BindingSource.DataSource = db.ExecuteDataSet(SqlStr, new DataSet(), "Opts").Tables[0];

                //objListGridControl.Refresh();


                db.GetMaterialDatas.DeleteAllOnSubmit(db.GetMaterialDatas.Where(p => p.InsertFlag == AInsertFlag));

                db.SubmitChanges();

                MessageBox.Show("请点击 ''發料數據'' 或者 ''退料數據'' ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);


            }
        }

        public DataTable InputExcel(string Path, string TableName, string tablename2)
        {
            try
            {
                string strConn = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + Path + ";" + "Extended Properties='Excel 8.0;HDR=YES;IMEX=1'";
                OleDbConnection conn = new OleDbConnection(strConn);
                conn.Open();
                string strExcel = "";
                OleDbDataAdapter myCommand = null;
                //if (tablename2.Length > 0 && !tablename2.Equals(string.Empty))
                //    TableName = tablename2;
                strExcel = "select * from [Sheet1$]";
                myCommand = new OleDbDataAdapter(strExcel, strConn);
                DataTable dt = new DataTable();
                myCommand.Fill(dt);
                conn.Close();
                return dt;
            }
            catch 
            {
                //throw new Exception(ex.Message);
                //throw new Exception("請檢查導入Execl表格中是否存在名稱爲：Sheet1 的工作表 ");
                //Console.WriteLine("{0}", e.Message);
                MessageBox.Show("請檢查導入Execl表格中是否存在名稱爲：Sheet1 的工作表 ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return null;
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            objListGridView.Columns.Clear();
            this.BindingSource.DataSource = null;

            if (Fl == 0)
            {
                MessageBox.Show("數據爲空, 請點擊''ImportData'',導入Execl表格的數據 ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }


            this.BindingSource.DataSource = dt_FL;

            objListGridControl.Refresh();



        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            objListGridView.Columns.Clear();
            this.BindingSource.DataSource = null;

            if (Tl == 0)
            {
                MessageBox.Show("數據爲空", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }



            this.BindingSource.DataSource = dt_TL;

            objListGridControl.Refresh();

        }




    }
}
