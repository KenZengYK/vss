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
using System.Data.OleDb;
namespace PH.LWPM.UI.WF
{
    public partial class InputExlFrm : Form
    {
        public InputExlFrm()
        {
            InitializeComponent();
            gridView1.BestFitColumns();
            gridView1.OptionsView.ColumnAutoWidth = false;
        }

        public RAPLQDataContext context { get; set; }

        DataSet myDs;
        private void simpleButton1_Click(object sender, EventArgs e)
        {



            //string filePath = @"C:\test.xls";
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

            int colnumber = getColNumber(mySheet);
            System.Data.DataTable dt = getTypeTb(mySheet,colnumber );
             myDs = new DataSet();
            myDs.Tables.Add(dt);
            DataRow myRow;
            myDs.Clear();

            List<string> ss = new List<string>();
            int i = 2;
            myRow = getDataRow(mySheet, dt, ss, colnumber,ref i);

            myBook = null;
            mySheet = null;
            myExcel.Quit();
            myExcel = null;
            gridControl1.DataSource = myDs.Tables[0];
         
        }

        private static DataRow getDataRow(Excel.Worksheet mySheet, System.Data.DataTable dt, List<string> ss,int colnumber, ref int i)
        {
            DataRow myRow;
            if (colnumber == 44)
            {
                do
                {
                    for (int j = 1; j <= 44; j++)
                    {
                        Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                        ss.Add(r.Text.ToString());
                    }
                    myRow = dt.NewRow();
                    myRow[0] = ss[0].Trim().ToString();
                    myRow[1] = ss[1].Trim().ToString();
                    myRow[2] = ss[2].Trim().ToString();
                    myRow[3] = ss[3].Trim().ToString();
                    myRow[4] = ss[4].Trim().ToString();
                    myRow[5] = ss[5].Trim().ToString();
                    myRow[6] = ss[6].Trim().ToString();
                    myRow[7] = ss[7].Trim().ToString();
                    myRow[8] = ss[8].Trim().ToString();
                    myRow[9] = ss[9].Trim().ToString();
                    myRow[10] = ss[10].Trim().ToString();
                    myRow[11] = ss[11].Trim().ToString();
                    myRow[12] = ss[12].Trim().ToString();
                    myRow[13] = ss[13].Trim().ToString();
                    myRow[14] = ss[14].Trim().ToString();
                    myRow[15] = ss[15].Trim().ToString();
                    myRow[16] = ss[16].Trim().ToString();
                    myRow[17] = ss[17].Trim().ToString();
                    myRow[18] = ss[18].Trim().ToString();
                    myRow[19] = ss[19].Trim().ToString();
                    myRow[20] = ss[20].Trim().ToString();
                    myRow[21] = ss[21].Trim().ToString();
                    myRow[22] = ss[22].Trim().ToString();
                    myRow[23] = ss[23].Trim().ToString();
                    myRow[24] = ss[24].Trim().ToString();
                    myRow[25] = ss[25].Trim().ToString();
                    myRow[26] = ss[26].Trim().ToString();
                    myRow[27] = ss[27].Trim().ToString();
                    myRow[28] = ss[28].Trim().ToString();
                    myRow[29] = ss[29].Trim().ToString();
                    myRow[30] = ss[30].Trim().ToString();
                    myRow[31] = ss[31].Trim().ToString();
                    myRow[32] = ss[32].Trim().ToString();
                    myRow[33] = ss[33].Trim().ToString();
                    myRow[34] = ss[34].Trim().ToString();
                    myRow[35] = ss[35].Trim().ToString();
                    myRow[36] = ss[36].Trim().ToString();
                    myRow[37] = ss[37].Trim().ToString();
                    myRow[38] = ss[38].Trim().ToString();
                    myRow[39] = ss[39].Trim().ToString();
                    myRow[40] = ss[40].Trim().ToString();
                    myRow[41] = ss[41].Trim().ToString();
                    myRow[42] = ss[42].Trim().ToString();
                    myRow[43] = ss[43].Trim().ToString();
                    dt.Rows.Add(myRow);
                    ss.Clear();
                    i++;
                } while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);
            }else
           
            {
                do
                {

                    //for (int j = 1; j <= 46; j++)
                    for (int j = 1; j <= 47; j++)
                    {
                        Excel.Range r = (Excel.Range)mySheet.Cells[i, j];
                        ss.Add(r.Text.ToString());
                    }
                    myRow = dt.NewRow();
                    myRow[0] = ss[0].Trim().ToString();
                    myRow[1] = ss[1].Trim().ToString();
                    myRow[2] = ss[2].Trim().ToString();
                    myRow[3] = ss[3].Trim().ToString();
                    myRow[4] = ss[4].Trim().ToString();
                    myRow[5] = ss[5].Trim().ToString();
                    myRow[6] = ss[6].Trim().ToString();
                    myRow[7] = ss[7].Trim().ToString();
                    myRow[8] = ss[8].Trim().ToString();
                    myRow[9] = ss[9].Trim().ToString();
                    myRow[10] = ss[10].Trim().ToString();
                    myRow[11] = ss[11].Trim().ToString();
                    myRow[12] = ss[12].Trim().ToString();
                    myRow[13] = ss[13].Trim().ToString();
                    myRow[14] = ss[14].Trim().ToString();
                    myRow[15] = ss[15].Trim().ToString();
                    myRow[16] = ss[16].Trim().ToString();
                    myRow[17] = ss[17].Trim().ToString();
                    myRow[18] = ss[18].Trim().ToString();
                    myRow[19] = ss[19].Trim().ToString();
                    myRow[20] = ss[20].Trim().ToString();
                    myRow[21] = ss[21].Trim().ToString();
                    myRow[22] = ss[22].Trim().ToString();
                    myRow[23] = ss[23].Trim().ToString();
                    myRow[24] = ss[24].Trim().ToString();
                    myRow[25] = ss[25].Trim().ToString();
                    myRow[26] = ss[26].Trim().ToString();
                    myRow[27] = ss[27].Trim().ToString();
                    myRow[28] = ss[28].Trim().ToString();
                    myRow[29] = ss[29].Trim().ToString();
                    myRow[30] = ss[30].Trim().ToString();
                    myRow[31] = ss[31].Trim().ToString();
                    myRow[32] = ss[32].Trim().ToString();
                    myRow[33] = ss[33].Trim().ToString();
                    myRow[34] = ss[34].Trim().ToString();
                    myRow[35] = ss[35].Trim().ToString();
                    myRow[36] = ss[36].Trim().ToString();
                    myRow[37] = ss[37].Trim().ToString();
                    myRow[38] = ss[38].Trim().ToString();
                    myRow[39] = ss[39].Trim().ToString();
                    myRow[40] = ss[40].Trim().ToString();
                    myRow[41] = ss[41].Trim().ToString();
                    myRow[42] = ss[42].Trim().ToString();
                    myRow[43] = ss[43].Trim().ToString();
                    myRow[44] = ss[44].Trim().ToString();
                    myRow[45] = ss[45].Trim().ToString();
                    myRow[46] = ss[46].Trim().ToString(); //11/17 add employee type,field:vacancy
                    dt.Rows.Add(myRow);
                    ss.Clear();
                    i++;
                } while (((Excel.Range)mySheet.Cells[i, 1]).Text.ToString().Trim() != string.Empty);
            }
            return myRow;
        }

        private static DataTable getTypeTb(Excel.Worksheet mySheet,int colnum)
        {
            System.Data.DataTable dt = new System.Data.DataTable("mytable");

            if (colnum==44)
            {
                dt.Columns.Add("ClsName", System.Type.GetType("System.String"));
                dt.Columns.Add("ID", System.Type.GetType("System.String"));
                dt.Columns.Add("FullName_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Sex", System.Type.GetType("System.String"));
                dt.Columns.Add("Country", System.Type.GetType("System.String"));
                dt.Columns.Add("Country(Local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Province", System.Type.GetType("System.String"));
                dt.Columns.Add("Province(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("City", System.Type.GetType("System.String"));                          //10
                dt.Columns.Add("City(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Town", System.Type.GetType("System.String"));
                dt.Columns.Add("Town(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Employment", System.Type.GetType("System.String"));
                dt.Columns.Add("Probation", System.Type.GetType("System.String"));
                dt.Columns.Add("Termination", System.Type.GetType("System.String"));
                dt.Columns.Add("Factory", System.Type.GetType("System.String"));
                dt.Columns.Add("DeptName", System.Type.GetType("System.String"));
                dt.Columns.Add("DeptName_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Section_Eng", System.Type.GetType("System.String"));     //20
                dt.Columns.Add("Section_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub_Section_FAE", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub_Section_FAECn", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub-Section_Linkage", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub-Section_Linkage_Cn", System.Type.GetType("System.String"));
                dt.Columns.Add("Team_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Team_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Class_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Class_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("TitleType_Eng", System.Type.GetType("System.String"));   //30
                dt.Columns.Add("TitleType_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("SMF", System.Type.GetType("System.String"));
                dt.Columns.Add("SMF(Local)", System.Type.GetType("System.String"));
                dt.Columns.Add("JobTitle_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("JobTitle_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Labor_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Labor_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("CrossRoleDcrp", System.Type.GetType("System.String"));
                dt.Columns.Add("Grade", System.Type.GetType("System.String"));
                dt.Columns.Add("Stationed_at", System.Type.GetType("System.String"));   //40
                dt.Columns.Add("Standby", System.Type.GetType("System.String"));
                dt.Columns.Add("Where_are_they_now", System.Type.GetType("System.String"));
                dt.Columns.Add("Opts_tasks_in_hand", System.Type.GetType("System.String"));
                dt.Columns.Add("WF_Perf_Level", System.Type.GetType("System.String"));  //44
            }
            //if (colnum == 46)
            if (colnum == 47)
            {
                dt.Columns.Add("ClsName", System.Type.GetType("System.String"));
                dt.Columns.Add("ID", System.Type.GetType("System.String"));
                dt.Columns.Add("FullName_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Sex", System.Type.GetType("System.String"));
                dt.Columns.Add("Country", System.Type.GetType("System.String"));
                dt.Columns.Add("Country(Local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Province", System.Type.GetType("System.String"));
                dt.Columns.Add("Province(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("City", System.Type.GetType("System.String"));
                dt.Columns.Add("City(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Town", System.Type.GetType("System.String"));
                dt.Columns.Add("Town(local)", System.Type.GetType("System.String"));
                dt.Columns.Add("Employment", System.Type.GetType("System.String"));
                dt.Columns.Add("Probation", System.Type.GetType("System.String"));
                dt.Columns.Add("Termination", System.Type.GetType("System.String"));
                dt.Columns.Add("Factory", System.Type.GetType("System.String"));
                dt.Columns.Add("DeptName", System.Type.GetType("System.String"));
                dt.Columns.Add("DeptName_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Section_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Section_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub_Section_FAE", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub_Section_FAECn", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub-Section_Linkage", System.Type.GetType("System.String"));
                dt.Columns.Add("Sub-Section_Linkage_Cn", System.Type.GetType("System.String"));
                dt.Columns.Add("Team_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Team_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Class_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Class_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("TitleType_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("TitleType_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("SMF", System.Type.GetType("System.String"));
                dt.Columns.Add("SMF(Local)", System.Type.GetType("System.String"));
                dt.Columns.Add("JobTitle_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("JobTitle_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("Labor_Eng", System.Type.GetType("System.String"));
                dt.Columns.Add("Labor_Local", System.Type.GetType("System.String"));
                dt.Columns.Add("CrossRoleDcrp", System.Type.GetType("System.String"));
                dt.Columns.Add("Grade", System.Type.GetType("System.String"));
                dt.Columns.Add("Stationed_at", System.Type.GetType("System.String"));
                dt.Columns.Add("Standby", System.Type.GetType("System.String"));
                dt.Columns.Add("Where_are_they_now", System.Type.GetType("System.String"));
                dt.Columns.Add("Opts_tasks_in_hand", System.Type.GetType("System.String"));
                dt.Columns.Add("WF_Perf_Level", System.Type.GetType("System.String"));
                dt.Columns.Add("GSD(false/true)", System.Type.GetType("System.String"));
                dt.Columns.Add("Head count(false/true)", System.Type.GetType("System.String"));
                dt.Columns.Add("Employee Type", System.Type.GetType("System.String")); //11/17 new add
            }


            return dt;
                
        }

        private static int getColNumber(Excel.Worksheet mySheet)
        {
            int i = 44;

            //if (((Excel.Range)mySheet.Cells[1, 46]).Text.ToString().Trim() != string.Empty)
            //{
            //     i = 46;
            //}
            if (((Excel.Range)mySheet.Cells[1, 47]).Text.ToString().Trim() != string.Empty)
            {
                i = 47;
            }
            return i;
        }

    
        private void simpleButton2_Click(object sender, EventArgs e)
        {     
           string strPrepanedByName= PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
           DateTime PrepanedByDatedt = DateTime.Now;
           string strConfirmName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
           DateTime ConfirmDatedt = DateTime.Now;
           doInsertUpdate(strPrepanedByName, ref PrepanedByDatedt, strConfirmName, ref ConfirmDatedt);                  
            MessageBox.Show("Input Success!!", "Information", MessageBoxButtons.OK);
        }


        private void ProcessStringValue(DataRow dr)
        {
            if (dr != null)
            {
                if (dr[21] != null && dr[21].ToString() != "")                
                  dr[21] =dr[21].ToString().Replace("'","''");
                if (dr[23] != null && dr[23].ToString() != "")
                    dr[23] = dr[23].ToString().Replace("'", "''");
                if (dr[25] != null && dr[25].ToString() != "")
                    dr[25] = dr[25].ToString().Replace("'", "''");
                if (dr[27] != null && dr[27].ToString() != "")
                    dr[27] = dr[27].ToString().Replace("'", "''");
                if (dr[29] != null && dr[29].ToString() != "")
                    dr[29] = dr[29].ToString().Replace("'", "''");
                if (dr[31] != null && dr[31].ToString() != "")
                    dr[31] = dr[31].ToString().Replace("'", "''");
                if (dr[33] != null && dr[33].ToString() != "")
                    dr[33] = dr[33].ToString().Replace("'", "''");
                if (dr[35] != null && dr[35].ToString() != "")
                    dr[35] = dr[35].ToString().Replace("'", "''");
                if (dr[37] != null && dr[37].ToString() != "")
                    dr[37] = dr[37].ToString().Replace("'", "''");
                            
            }
        }
        private void doInsertUpdate(string strPrepanedByName, ref DateTime PrepanedByDatedt, string strConfirmName, ref DateTime ConfirmDatedt)
        {
            if (myDs.Tables[0].Columns.Count >= 45)
            {
                foreach (DataRow ss in myDs.Tables[0].Rows)
                {
                    ProcessStringValue(ss);
                    if (context.WorkForces.Where(P => P.Id == ss[1].ToString().TrimEnd()).Count() == 0)
                    {
                        string sqlinsert = string.Empty;

                        if (ss[13] != "" && ss[15] != "")
                        {

                            //add field vacancy:employee type add by joseph at 14/41/17
//                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
//                                                            PrepanedByName,PrepanedByDate,
//                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
//                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
//                                        ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
//                                        ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
//                                        ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
//                                         ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString());

                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType,vacancy)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','','{46}')",
                                        ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                        ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                        ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                         ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString(),ss[46].ToString());


                        }
                        else if (ss[13] != "" && ss[15] == "")
                        {
//                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
//                                                            PrepanedByName,PrepanedByDate,
//                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
//                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
//                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
//                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
//                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
//                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString());

                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType,vacancy)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','','{46}')",
                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString(), ss[46].ToString());

                        }
                        else if (ss[13] == "" && ss[15] != "")
                        {
//                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
//                                                            PrepanedByName,PrepanedByDate,
//                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
//                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
//                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
//                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
//                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
//                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString());
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType,vacancy)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','','{46}')",
                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString(),ss[46].ToString());

                        }
                        else
                        {
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType,vacancy)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
                                     ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                     ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                     ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                      ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString());

//                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,IsRelated,HeadCount,
//                                                            PrepanedByName,PrepanedByDate,
//                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType,vacancy)
//                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','{44}','{45}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','','{46}')",
//                                     ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
//                                     ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
//                                     ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
//                                      ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), ss[44].ToString(), ss[45].ToString(),ss[46].ToString());

                        }

                        context.ExecuteCommand(sqlinsert);

                    }

                    if (context.WorkForces.Where(P => P.Id == ss[1].ToString().TrimEnd()).Count() > 0)
                    {
                        string sqlupdate = string.Empty;

                        if (ss[13] != "" && ss[15] != "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate='{13}',ShortClass='{14}',REDate='{15}',Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                       //    "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                           "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0',IsRelated='{49}',HeadCount='{50},vacancy='{51}'  where Id='{1}' and Factory='{16}'",
                                                           ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                               ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                               ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "", ss[44].ToString(), ss[45].ToString(),ss[46].ToString());

                        }
                        else if (ss[13] != "" && ss[15] == "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate='{13}',ShortClass='{14}',REDate=null,Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                        //     "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0',IsRelated='{49}',HeadCount='{50}',vacancy='{51}'   where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "", ss[44].ToString(), ss[45].ToString(), ss[46].ToString());

                        }
                        else if (ss[13] == "" && ss[15] != "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate=null,ShortClass='{14}',REDate='{15}',Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                      //       "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0',IsRelated='{49}',HeadCount='{50}',vacancy='{51}'   where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "", ss[44].ToString(), ss[45].ToString(),ss[46].ToString());

                        }
                        else
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate=null,ShortClass='{14}',REDate=null,Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                         //    "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0',IsRelated='{49}',HeadCount='{50}',vacancy='{51}'   where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "", ss[44].ToString(), ss[45].ToString(),ss[46].ToString());

                        }
                        context.ExecuteCommand(sqlupdate);

                    }



                }
            }
            else
            {
                foreach (DataRow ss in myDs.Tables[0].Rows)
                {
                    if (context.WorkForces.Where(P => P.Id == ss[1].ToString().TrimEnd()).Count() == 0)
                    {
                        string sqlinsert = string.Empty;

                        if (ss[13] != "" && ss[15] != "")
                        {
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
                                        ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                        ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                        ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                         ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString());

                        }
                        else if (ss[13] != "" && ss[15] == "")
                        {
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString());

                        }
                        else if (ss[13] == "" && ss[15] != "")
                        {
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}','{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
                                       ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                       ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                       ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                        ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString());

                        }
                        else
                        {
                            sqlinsert = string.Format(@"insert into  workforce (ClsName,ID,NameEn,NameCn,Sex,Country,CountryCn,Region,RegionCn,Area,AreaCn,Town,TownCn,JPDate,ShortClass,REDate,Factory, DeptName,DeptNameCn,WFWhere,WFWhereCn,Sub_Section_FAE,Sub_Section_FAECn,Co_Team,Co_TeamCn,WFWhere_1,WFWhere_1Cn,WFWhere_2,WFWhere_2Cn,WorkForceTyEn,WorkForceTyCn,WorkerType,WorkerTypeCn,JobTitleEn,JobTitleCn,WFPart,WFPartCn,CrossRoleDcrp,Grade,Stationed_at,Standby, LineCode,WFState,WFLevel,
                                                            PrepanedByName,PrepanedByDate,
                                                            dWF,InActive,IsRegistAuxiliary,LongLeave,TechType)
                                              values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}',null,'{14}',null,'{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}','{26}','{27}','{28}','{29}','{30}','{31}','{32}','{33}','{34}','{35}','{36}','{37}','{38}','{39}','{40}','{41}','{42}','{43}','" + strPrepanedByName + "','" + PrepanedByDatedt + "','1','0','0','0','')",
                                     ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                     ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                     ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                      ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString());

                        }

                        context.ExecuteCommand(sqlinsert);

                    }

                    if (context.WorkForces.Where(P => P.Id == ss[1].ToString().TrimEnd()).Count() > 0)
                    {
                        string sqlupdate = string.Empty;

                        if (ss[13] != "" && ss[15] != "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',ID='{1}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate='{13}',ShortClass='{14}',REDate='{15}',Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                     //      "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                           "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0'  where Id='{1}' and Factory='{16}'",
                                                           ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                               ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                               ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "");

                        }
                        else if (ss[13] != "" && ss[15] == "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',ID='{1}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate='{13}',ShortClass='{14}',REDate=null,Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                    //         "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0'  where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "");

                        }
                        else if (ss[13] == "" && ss[15] != "")
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',ID='{1}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate=null,ShortClass='{14}',REDate='{15}',Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                      //       "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0'  where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "");

                        }
                        else
                        {
                            sqlupdate = string.Format(" update   WorkForce set   ClsName='{0}',ID='{1}',NameEn='{2}',NameCn='{3}',Sex='{4}',Country='{5}',CountryCn='{6}',Region='{7}',RegionCn='{8}',Area='{9}',AreaCn='{10}',Town='{11}',TownCn='{12}',JPDate=null,ShortClass='{14}',REDate=null,Factory='{16}', DeptName='{17}',DeptNameCn='{18}',WFWhere='{19}',WFWhereCn='{20}',Sub_Section_FAE='{21}',Sub_Section_FAECn='{22}',Co_Team='{23}',Co_TeamCn='{24}',WFWhere_1='{25}',WFWhere_1Cn='{26}',WFWhere_2='{27}',WFWhere_2Cn='{28}',WorkForceTyEn='{29}',WorkForceTyCn='{30}',WorkerType='{31}',WorkerTypeCn='{32}',JobTitleEn='{33}',JobTitleCn='{34}',WFPart='{35}',WFPartCn='{36}',CrossRoleDcrp='{37}',Grade='{38}',Stationed_at='{39}',Standby='{40}', LineCode='{41}',WFState='{42}',WFLevel='{43}'," +
                                                      //       "   ConfirmName='" + strConfirmName + "', ConfirmDate='" + ConfirmDatedt + "', " +
                                                             "  dWF={44},InActive={45},IsRegistAuxiliary={46},LongLeave={47},TechType='{48}',MTM='0'  where Id='{1}' and Factory='{16}'",
                                                             ss[0].ToString(), ss[1].ToString(), ss[2].ToString(), ss[3].ToString(), ss[4].ToString(), ss[5].ToString(),
                                 ss[6].ToString(), ss[7].ToString(), ss[8].ToString(), ss[9].ToString(), ss[10].ToString(), ss[11].ToString(),
                                 ss[12].ToString(), ss[13].ToString(), ss[14].ToString(), ss[15].ToString(), ss[16].ToString(), ss[17].ToString(), ss[18].ToString(), ss[19].ToString(), ss[20].ToString(), ss[21].ToString(), ss[22].ToString(), ss[23].ToString(), ss[24].ToString(), ss[25].ToString(), ss[26].ToString(), ss[27].ToString(), ss[28].ToString(), ss[29].ToString(),
                                  ss[30].ToString(), ss[31].ToString(), ss[32].ToString(), ss[33].ToString(), ss[34].ToString(), ss[35].ToString(), ss[36].ToString(), ss[37].ToString(), ss[38].ToString(), ss[39].ToString(), ss[40].ToString(), ss[41].ToString(), ss[42].ToString(), ss[43].ToString(), '1', '0', '0', '0', "");

                        }
                        context.ExecuteCommand(sqlupdate);

                    }



                }
            }
        }

    
        private void gridControl1_Click(object sender, EventArgs e)
        {

        }
    }
}
