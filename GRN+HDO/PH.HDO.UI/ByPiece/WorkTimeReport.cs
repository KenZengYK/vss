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
    public partial class WorkTimeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WorkTimeReport()
        {
            InitializeComponent();         

        }

        public WorkTimeReport(DateTime StratTime, DateTime DueTime, string ID, string Name, string Group, int Flag)
         
        {
            InitializeComponent();
            GetDataSet(StratTime, DueTime, ID,  Group, Flag);

            xrLabel10.Text = "Printed on: " + DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel6.Text = "DATE FROM:" + StratTime.ToString("yyyy-MM-dd") + " To: " + DueTime.ToString("yyyy-MM-dd");
            xrLabel3.Text = "½M„e: " + Group.Replace(",", "/");
        }

        public void GetDataSet(DateTime StratTime, DateTime DueTime, string ID,  string Group, int Flag)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            //SqlCommand da = new SqlCommand();
            //DataSet ds = new DataSet();
            //da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            //da.CommandType = CommandType.StoredProcedure;
            //da.CommandText = "WorkTime_SummaryReport";

            //da.Parameters.Add("@StartDate", SqlDbType.DateTime);
            //da.Parameters["@StartDate"].Value = StratTime;

            //da.Parameters.Add("@DueDate", SqlDbType.DateTime);
            //da.Parameters["@DueDate"].Value = DueTime;

            //da.Parameters.Add("@Number", SqlDbType.NVarChar, 50);
            //da.Parameters["@Number"].Value = ID;

            //da.Parameters.Add("@Name", SqlDbType.NVarChar, 50);
            //da.Parameters["@Name"].Value = Name;


            //da.Parameters.Add("@Group", SqlDbType.NVarChar, 50);
            //da.Parameters["@Group"].Value = Group;

            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = da;

            //dap.Fill(ds);


            string SqlStr = "exec WorkTime_SummaryReport '{0}', '{1}', '{2}', '{3}', '{4}'";
            SqlStr = string.Format(SqlStr, StratTime.ToString("yyyy-MM-dd HH:mm:ss"), DueTime.ToString("yyyy-MM-dd HH:mm:ss"), ID, Group.Replace(" ", ""), Flag);
            DataSet ds = Context.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");



            int b = ds.Tables[0].Rows.Count;

            if (b > 0)
            {
                List<WarkTimeReport> MasterList = new List<WarkTimeReport>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {                    
                    WarkTimeReport MasterObj = new WarkTimeReport();

                    MasterObj.Group_Code= ds.Tables[0].Rows[i]["Group_Code"].ToString();
                    MasterObj.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                    MasterObj.NumB =ds.Tables[0].Rows[i]["NumB"].ToString();
                    MasterObj.TimeLag = ds.Tables[0].Rows[i]["Time_Quantum"].ToString();
                    MasterObj.BaseNumb = ds.Tables[0].Rows[i]["BaseNumber"].ToString();
                    MasterObj.Amount =ds.Tables[0].Rows[i]["Amount"]!=DBNull.Value?Convert.ToDouble(ds.Tables[0].Rows[i]["Amount"].ToString()):0; 
                
                    MasterList.Add(MasterObj);
                }
                this.bindingSource1.DataSource = MasterList;
            }


        }

    }
}
