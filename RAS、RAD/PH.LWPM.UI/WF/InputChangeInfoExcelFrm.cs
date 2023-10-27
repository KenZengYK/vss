using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF
{
    public partial class InputChangeInfoExcelFrm : Form
    {
        public InputChangeInfoExcelFrm()
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

        private void ProcessStringValue(DataRow dr)
        {
            if (dr != null)
            {
                if (dr[2] != null && dr[2].ToString() != "")
                    dr[2] = dr[2].ToString().Replace("'", "''");
                if (dr[3] != null && dr[3].ToString() != "")
                    dr[3] = dr[3].ToString().Replace("'", "''");
                if (dr[4] != null && dr[4].ToString() != "")
                    dr[4] = dr[4].ToString().Replace("'", "''");
                if (dr[5] != null && dr[5].ToString() != "")
                    dr[5] = dr[5].ToString().Replace("'", "''");
                if (dr[10] != null && dr[10].ToString() != "")
                    dr[10] = dr[10].ToString().Replace("'", "''");
                if (dr[13] != null && dr[13].ToString() != "")
                    dr[13] = dr[13].ToString().Replace("'", "''");
                if (dr[14] != null && dr[14].ToString() != "")
                    dr[14] = dr[14].ToString().Replace("'", "''");
                if (dr[15] != null && dr[15].ToString() != "")
                    dr[15] = dr[15].ToString().Replace("'", "''");
                if (dr[17] != null && dr[17].ToString() != "")
                    dr[17] = dr[17].ToString().Replace("'", "''");

            }
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            foreach (DataRow ss in myDs.Tables[0].Rows)
            {
                if (context.WorkForces.Where(P => P.Id == ss[0].ToString().TrimEnd()).Count() == 1)
                {
                    context.ExecuteCommand(string.Format(@"update workforce  set Dept='{0}',DeptName='{1}',LineCode='{2}',Location='{3}',WorkerType='{4}',JobTitleEn='{5}',JobTitleCn='{6}',ClsName='{7}',WFWhere='{8}',WFState='{9}' where ID='{10}'",
                               ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(), ss[10].ToString(),ss[13].ToString(),ss[14].ToString(),ss[15].ToString(),ss[17].ToString(),ss[18].ToString(), ss[0].ToString()));
                }

            }
            //MessageBox.Show("Input success!!");
            MessageBox.Show("Update Success!!", "Information", MessageBoxButtons.OK);
        }

    }
}
