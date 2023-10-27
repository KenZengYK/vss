using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.IO;
using System.Data.OleDb;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.SaveExecel
{
    public partial class SaveExecelForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SaveExecelForm()
        {
            InitializeComponent();
        }

        private void buttonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = "c:\\";//注意这里写路径时要用c:\\而不是c:\
            openFileDialog.Filter = "(*.xlsx,*.xls)|.xlsx;*.xls";
            openFileDialog.RestoreDirectory = true;
            openFileDialog.FilterIndex = 1;
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                buttonEdit1.Text = openFileDialog.FileName;
                 int len = openFileDialog.FileName.ToString().Trim().Length;
                //File fileOpen = new File(fName);
                //isFileHaveName = true;
                //richTextBox1.Text = fileOpen.ReadFile();
                //richTextBox1.AppendText("");
                 DataTable dt = InputExcel(buttonEdit1.Text, "", this.buttonEdit1.Text.Trim());

                 int td = dt.Rows.Count;

                 this.gridControl1.DataSource = dt;
                 this.gridControl1.Refresh();
                 PH.MobileQC.BO.MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();


                 foreach (DataRow row in dt.Rows)
                 {
                     FinanceExportData obj = new FinanceExportData();
                     obj.InsertFlag = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID + DateTime.Now.ToString("yyyy-MM-dd");
                     obj.WO = row["WORK_ORDER"].ToString();
                     db.FinanceExportDatas.InsertOnSubmit(obj);
                 }
                 db.SubmitChanges();
                 //_context.QC_Masters.InsertOnSubmit(this._qc_Master);
                 //_context.SubmitChanges();

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
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        void InsertSource() 
        {
            
        }
        /*
strCon = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + filepath + ";Extended Properties='Excel 8.0;HDR=YES;IMEX=1'";         
         */



    }
}