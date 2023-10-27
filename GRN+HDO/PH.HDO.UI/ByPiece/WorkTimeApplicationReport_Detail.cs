using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.PHGDB2.BO;
using PH.Platform.BO;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;

namespace PH.HDO.UI.ByPiece
{
    public partial class WorkTimeApplicationReport_Detail : DevExpress.XtraReports.UI.XtraReport
    {
        public WorkTimeApplicationReport_Detail()
        {
            InitializeComponent();         

        }

        public WorkTimeApplicationReport_Detail(DateTime StratTime, DateTime DueTime, string ID, string Name, string Group ,int Flag)          
        {
            InitializeComponent();

            GetDataSet(StratTime, DueTime, ID,  Group, Flag);

            xrLabel10.Text = "Printed on: " + DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel3.Text = "DATE FROM:" + StratTime.ToString("yyyy-MM-dd") + " To: " + DueTime.ToString("yyyy-MM-dd");
            xrLabel5.Text = "½M„e: " + Group.Replace(",", "/");
            

        }

        public void GetDataSet(DateTime StratTime, DateTime DueTime, string ID,  string Group,int Flag)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            //SqlCommand da = new SqlCommand();
            //DataSet ds = new DataSet();
            //da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            //da.CommandType = CommandType.StoredProcedure;
            //da.CommandText = "WorkTime_ApplicationReport";

            //da.Parameters.Add("@StartDate", SqlDbType.DateTime);
            //da.Parameters["@StartDate"].Value = StratTime;

            //da.Parameters.Add("@DueDate", SqlDbType.DateTime);
            //da.Parameters["@DueDate"].Value = DueTime;

            //da.Parameters.Add("@Number", SqlDbType.NVarChar, 50);
            //da.Parameters["@Number"].Value = ID;

            //da.Parameters.Add("@Name", SqlDbType.NVarChar, 50);
            //da.Parameters["@Name"].Value = Name;

            //da.Parameters.Add("@Group", SqlDbType.NVarChar, 50);
            //da.Parameters["@Group"].Value = Group.Replace(" ", "");

            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = da;
           
            //dap.Fill(ds);

            string SqlStr = "exec WorkTime_ApplicationReport '{0}', '{1}', '{2}', '{3}' , '{4}'";
            SqlStr = string.Format(SqlStr, StratTime.ToString("yyyy-MM-dd HH:mm:ss"), DueTime.ToString("yyyy-MM-dd HH:mm:ss"), ID, Group.Replace(" ", ""), Flag);
            DataSet ds = Context.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");


            int b = ds.Tables[0].Rows.Count;
            if (b > 0)
            {
                List<WorkTimeApplication> MasterList = new List<WorkTimeApplication>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    WorkTimeApplication MasterObj = new WorkTimeApplication();
                    MasterObj.Date_Time= DateTime.Parse(ds.Tables[0].Rows[i]["Date_time"].ToString());
                    MasterObj.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                    MasterObj.NumB =ds.Tables[0].Rows[i]["NumB"].ToString();
                    MasterObj.Reason = ds.Tables[0].Rows[i]["Reason"].ToString();
                    MasterObj.Work_desc = ds.Tables[0].Rows[i]["Work_desc"].ToString();
                    if (ds.Tables[0].Rows[i]["Time_Quantum_Start"] != DBNull.Value && ds.Tables[0].Rows[i]["Time_Quantum_Due"] != DBNull.Value)
                    {
                        MasterObj.Time_Quantum = MasterObj.GetTime_Quantum2(DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Start"].ToString()), DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Due"].ToString()));
                    }
                    else 
                    {
                        MasterObj.Time_Quantum = "Null";
                    }
                    MasterObj.BaseNumber = ds.Tables[0].Rows[i]["BaseNumber"].ToString();
                    MasterObj.Amount =ds.Tables[0].Rows[i]["Amount"]!= DBNull.Value?Convert.ToDouble(ds.Tables[0].Rows[i]["Amount"].ToString()):0;
                    MasterObj.department = ds.Tables[0].Rows[i]["department"].ToString();
                    MasterObj.Reamrk = ds.Tables[0].Rows[i]["Reamrk"].ToString();
                    MasterObj.TimeLag =ds.Tables[0].Rows[i]["Time_Quantum"].ToString();
                    MasterObj.Group_Code = ds.Tables[0].Rows[i]["Group_Code"].ToString();


                    MasterList.Add(MasterObj);
                }
                this.bindingSource1.DataSource = MasterList;
            }


        }

    }
}
