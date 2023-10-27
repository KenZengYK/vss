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
    public partial class InpurtRestoreWorkerFrm : Form
    {
        public InpurtRestoreWorkerFrm()
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
            dt.Columns.Add("NameCn", System.Type.GetType("System.String"));
            dt.Columns.Add("Dept", System.Type.GetType("System.String"));
            dt.Columns.Add("DeptName", System.Type.GetType("System.String"));
            dt.Columns.Add("LineCode", System.Type.GetType("System.String"));
            dt.Columns.Add("Location", System.Type.GetType("System.String"));
            dt.Columns.Add("JLDate", System.Type.GetType("System.String"));
            dt.Columns.Add("JPDate", System.Type.GetType("System.String"));
            dt.Columns.Add("Sex", System.Type.GetType("System.String"));
            dt.Columns.Add("Factory", System.Type.GetType("System.String"));
            dt.Columns.Add("WorkerType", System.Type.GetType("System.String"));
            dt.Columns.Add("Region", System.Type.GetType("System.String"));
            dt.Columns.Add("Area", System.Type.GetType("System.String"));
            dt.Columns.Add("JobTitleEn", System.Type.GetType("System.String"));
            //by gyg
            dt.Columns.Add("JobTitleCn", System.Type.GetType("System.String"));//[14]
            dt.Columns.Add("ClsName", System.Type.GetType("System.String"));
            dt.Columns.Add("WFLevel", System.Type.GetType("System.String"));
            //by gyg
            dt.Columns.Add("WFWhere", System.Type.GetType("System.String"));
            dt.Columns.Add("WFState", System.Type.GetType("System.String"));
            myDs = new DataSet();
            myDs.Tables.Add(dt);
            DataRow myRow;
            myDs.Clear();

            List<string> ss = new List<string>();
            int i = 2;
            do
            {
                for (int j = 1; j <= 19; j++)
                {
                    Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                    ss.Add(r.Text.ToString());

                }
                myRow = dt.NewRow();
                myRow[0] = ss[0].ToString();
                myRow[1] = ss[1].ToString();
                myRow[2] = ss[2].ToString();
                myRow[3] = ss[3].ToString();
                myRow[4] = ss[4].ToString();
                myRow[5] = ss[5].ToString();
                myRow[6] = ss[6].ToString();
                myRow[7] = ss[7].ToString();
                myRow[8] = ss[8].ToString();
                myRow[9] = ss[9].ToString();
                myRow[10] = ss[10].ToString();
                myRow[11] = ss[11].ToString();
                myRow[12] = ss[12].ToString();
                myRow[13] = ss[13].ToString();
                myRow[14] = ss[14].ToString();
                myRow[15] = ss[15].ToString();
                myRow[16] = ss[16].ToString();
                myRow[17] = ss[17].ToString();
                myRow[18] = ss[18].ToString();
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
                context.ExecuteCommand(string.Format(@"update workforce set InActive='0' where Id='{0}' ", ss[0].ToString()));

            }
            MessageBox.Show("Update Success!!", "Information", MessageBoxButtons.OK);
        }
    }
}
