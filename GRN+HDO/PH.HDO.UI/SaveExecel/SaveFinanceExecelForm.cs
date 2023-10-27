using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Data.OleDb;
using PH.HDO.BO;
using PH.PHGDB2.BO;
using System.Linq;
using PH.Platform.BO;

namespace PH.HDO.UI.SaveExecel
{
    public partial class SaveFinanceExecelForm : PH.Platform.UI.CS.UI2.ListForm
    {

        PHGDB2DataContext db = ContextBuilder.CreateContext<PHGDB2DataContext>();

        public SaveFinanceExecelForm()
        {
            InitializeComponent();

            if (this.DataContext == null) 
            {
                this.DataContext = db;
            }
        }

        private void WOInfo_Out_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            objListGridView.Columns.Clear();
            this.BindingSource.DataSource = null;

            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = "c:\\";//ע������д·��ʱҪ��c:\\������c:\
            openFileDialog.Filter = "(*.xlsx,*.xls)|.xlsx;*.xls";
            openFileDialog.RestoreDirectory = true;
            openFileDialog.FilterIndex = 1;
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
             
                int len = openFileDialog.FileName.ToString().Trim().Length;
                //File fileOpen = new File(fName);
                //isFileHaveName = true;
                //richTextBox1.Text = fileOpen.ReadFile();
                //richTextBox1.AppendText("");
                DataTable dt = InputExcel(openFileDialog.FileName, "", openFileDialog.FileName.Trim());

                if (dt == null) return;
                int td = dt.Rows.Count;

                string AInsertFlag = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID + DateTime.Now.ToString("yyyyMMddHHmmss");

                List<string> columnNameList = new List<string>();
                foreach (DataColumn col in dt.Columns)
                {
                    columnNameList.Add(col.ColumnName);//��ȡ��DataColumn�ж��������
                }

                string WO = columnNameList.Where(p => p.Contains("WORK_ORDER") || p.Contains("WORK_ORDER")).FirstOrDefault();

                if (string.IsNullOrEmpty(WO)) 
                {
                    MessageBox.Show("Ո�z�錧���Execl���Sheet1���������Ƿ����''WORK_ORDER''���ֶΣ���Ҫԓ��������һ��λ���Q����''WORK_ORDER''��Ո����'Wo'�ę�λ���Q�ĳ�'' WORK_ORDER '', ��tϵ�y�o���R�e�� ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return ;
                }

                int AFlagTime =db.GetFather_FL_Outs.Where(p => p.InsertFlag == AInsertFlag).Count()== 0? 0: db.GetFather_FL_Outs.Where(p => p.InsertFlag == AInsertFlag).Select(p => p.FlagTime??0).Max();

                foreach (DataRow row in dt.Rows)
                {
                    GetFather_FL_Out obj = new GetFather_FL_Out();
                    obj.InsertFlag = AInsertFlag;
                    obj.WO = row[WO].ToString();
                    obj.FlagTime = AFlagTime + 1;

                    db.GetFather_FL_Outs.InsertOnSubmit(obj);
                   
                }
               

                db.SubmitChanges();

                
                string SqlStr = "exec Sp_GetFather_FL '{0}',{1}";
                SqlStr=string.Format(SqlStr,AInsertFlag, AFlagTime+1);

                db.CommandTimeout = 9999;

                this.BindingSource.DataSource = db.ExecuteDataSet(SqlStr, new DataSet(), "Opts").Tables[0];

                objListGridControl.Refresh();


                db.GetFather_FL_Outs.DeleteAllOnSubmit(db.GetFather_FL_Outs.Where(p =>  p.InsertFlag == AInsertFlag));

                db.SubmitChanges();

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
            //catch (Exception ex)
            //{
            //    throw new Exception(ex.Message);
            //    //MessageBox.Show("Ո�z�錧��Execl������Ƿ�������Q����Sheet1 �Ĺ����� ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
            catch
            {
                //throw new Exception(ex.Message);
                //throw new Exception("Ո�z�錧��Execl������Ƿ�������Q����Sheet1 �Ĺ����� ");
                //Console.WriteLine("{0}", e.Message);
                MessageBox.Show("Ո�z�錧��Execl������Ƿ�������Q����Sheet1 �Ĺ����� ", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return null;
            }
        }

        private void WOInfo_In_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            objListGridView.Columns.Clear();
            this.BindingSource.DataSource = null;

            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = "c:\\";//ע������д·��ʱҪ��c:\\������c:\
            openFileDialog.Filter = "(*.xlsx,*.xls)|.xlsx;*.xls";
            openFileDialog.RestoreDirectory = true;
            openFileDialog.FilterIndex = 1;
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {

                int len = openFileDialog.FileName.ToString().Trim().Length;
                //File fileOpen = new File(fName);
                //isFileHaveName = true;
                //richTextBox1.Text = fileOpen.ReadFile();
                //richTextBox1.AppendText("");
                DataTable dt = InputExcel(openFileDialog.FileName, "", openFileDialog.FileName.Trim());

                int td = dt.Rows.Count;

                //this.gridControl1.DataSource = dt;
                //this.gridControl1.Refresh();
                //PH.MobileQC.BO.MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

                string AInsertFlag = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID + DateTime.Now.ToString("yyyyMMddHHmmss");



                int AFlagTime = db.GetFather_TL_Ins.Where(p => p.InsertFlag == AInsertFlag).Count() == 0 ? 0 : db.GetFather_TL_Ins.Where(p => p.InsertFlag == AInsertFlag).Select(p => p.FlagTime ?? 0).Max();

                foreach (DataRow row in dt.Rows)
                {
                    GetFather_TL_In obj = new GetFather_TL_In();
                    obj.InsertFlag = AInsertFlag;
                    obj.WO = row["WORK_ORDER"].ToString();
                    obj.FlagTime = AFlagTime + 1;

                    db.GetFather_TL_Ins.InsertOnSubmit(obj);

                }


                db.SubmitChanges();

                db.CommandTimeout = 9999;

                string SqlStr = "exec Sp_GetFather_TL '{0}',{1}";
                SqlStr = string.Format(SqlStr, AInsertFlag, AFlagTime + 1);


                this.BindingSource.DataSource = db.ExecuteDataSet(SqlStr, new DataSet(), "Opts").Tables[0];

                objListGridControl.Refresh();


                db.GetFather_TL_Ins.DeleteAllOnSubmit(db.GetFather_TL_Ins.Where(p => p.InsertFlag == AInsertFlag));

                db.SubmitChanges();

            }
        }




    }
}