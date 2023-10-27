using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using Excel = Microsoft.Office.Interop.Excel;
using PH.LWPM.BO;
namespace PH.LWPM.UI.WF
{
    public partial class InputAttendanceExcelFrm : Form
    {
        public InputAttendanceExcelFrm()
        {
            InitializeComponent();
        }

        public RAPLQDataContext context { get; set; }
        DataSet myDs;
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string excelFilePath = string.Empty;
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                excelFilePath = openFileDialog1.FileName;
            }
            if (string.IsNullOrEmpty(excelFilePath))
            { return; }
            //string excelFilePath = @"C:\test.xls";

            Excel.Application myExcel = new Excel.ApplicationClass();
            object oMissing = System.Reflection.Missing.Value;
            myExcel.Application.Workbooks.Open(excelFilePath, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing);
            Excel.Workbook myBook = myExcel.Workbooks[1];
            Excel.Worksheet mySheet = (Excel.Worksheet)myBook.Worksheets[1];

            System.Data.DataTable dt = new System.Data.DataTable("mytable");
            dt.Columns.Add("ID", System.Type.GetType("System.String"));
            dt.Columns.Add("Date", System.Type.GetType("System.String"));
            dt.Columns.Add("IsWork", System.Type.GetType("System.String"));
            myDs = new DataSet();
            myDs.Tables.Add(dt);
            DataRow myRow;
            myDs.Clear();
             List<string> ss = new List<string>();
            int i = 2;
            do
            {
                for (int j = 1; j <= 3; j++)
                {
                    Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                    ss.Add(r.Text.ToString());

                }
                myRow = dt.NewRow();
                myRow[0] = ss[0].ToString();
                myRow[1] = ss[1].ToString();
                myRow[2] = ss[2].ToString();
                dt.Rows.Add(myRow);
                ss.Clear();
                i++;
            } while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);

            myBook = null;
            mySheet = null;
            myExcel.Quit();
            myExcel = null;
            gridControl1.DataSource = myDs.Tables[0];
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {

            foreach (DataRow ss in myDs.Tables[0].Rows)
            {
                DateTime date = Convert.ToDateTime(ss[1].ToString().TrimEnd());
                if (context.WorkerAttendances.Where(P => P.ID == ss[0].ToString().TrimEnd() && P.Date == date).Count() == 0)
                {
                       context.ExecuteCommand(string.Format(@"insert into  WorkerAttendance (ID, Date, IsWork) values ('{0}','{1}','{2}')",
                               ss[0].ToString(), ss[1].ToString(), ss[2].ToString()));
                }
            }
            MessageBox.Show("Input Success!!", "Information", MessageBoxButtons.OK);
        }
    }
}
