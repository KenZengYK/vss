using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using PH.HDO.BO;
using PH.Platform.BO;
namespace PH.HDO.UI
{
    public partial class IDInvoiceExcel : Form
    {
        public IDInvoiceExcel()
        {
            InitializeComponent();
        }
        public HDODataContext context { get; set; }

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
            dt.Columns.Add("HDO", System.Type.GetType("System.String"));
            dt.Columns.Add("ID", System.Type.GetType("System.String"));
            dt.Columns.Add("Invoice", System.Type.GetType("System.String"));
            dt.Columns.Add("Material", System.Type.GetType("System.String"));
            dt.Columns.Add("ProjectNo", System.Type.GetType("System.String")); 

            myDs = new DataSet();
            myDs.Tables.Add(dt);
            DataRow myRow;
            myDs.Clear();

            List<string> ss = new List<string>();
            int count = 0;
            int i = 2;
            do
            {
                for (int j = 1; j <= 5; j++)
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
                dt.Rows.Add(myRow);
                ss.Clear();
                i++;
                count++;
            } while (((Excel.Range)mySheet.Cells[i, 2]).Text.ToString().Trim() != string.Empty);

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
                string str = string.Format(@"insert into  Invoice (HDO,ID,Invoice,Material,ProjectNo) values ('{0}','{1}','{2}','{3}','{4}')",
                                            ss[0].ToString().TrimEnd(), ss[1].ToString().TrimEnd(), ss[2].ToString().TrimEnd(),
                                            ss[3].ToString().TrimEnd(), ss[4].ToString().TrimEnd());
                context.ExecuteCommand(str);

            }
            MessageBox.Show("Input Success!!", "Information", MessageBoxButtons.OK);
        }
    }
}
