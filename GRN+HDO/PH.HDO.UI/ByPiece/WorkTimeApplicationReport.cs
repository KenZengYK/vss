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
    public partial class WorkTimeApplicationReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WorkTimeApplicationReport()
        {
            InitializeComponent();         

        }

        public WorkTimeApplicationReport(DateTime StratTime, DateTime DueTime, string ID, string Name)
        {
            InitializeComponent();
            GetDataSet(StratTime, DueTime, ID, Name);

            xrLabel10.Text = "Printed on: " + DateTime.Now.ToString("yyyy-MM-dd");
        }

        public void GetDataSet(DateTime StratTime, DateTime DueTime, string ID, string Name)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            SqlCommand da = new SqlCommand();
            DataSet ds = new DataSet();
            da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            da.CommandType = CommandType.StoredProcedure;
            da.CommandText = "WorkTime_ApplicationReport";

            da.Parameters.Add("@StartDate", SqlDbType.DateTime);
            da.Parameters["@StartDate"].Value = StratTime;

            da.Parameters.Add("@DueDate", SqlDbType.DateTime);
            da.Parameters["@DueDate"].Value = DueTime;

            da.Parameters.Add("@Number", SqlDbType.NVarChar, 20);
            da.Parameters["@Number"].Value = ID;

            da.Parameters.Add("@Name", SqlDbType.NVarChar, 20);
            da.Parameters["@Name"].Value = Name;

            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = da;

            dap.Fill(ds);
            int b = ds.Tables[0].Rows.Count;

            if (b > 0)
            {
                List<ByPrice_WorkTimeApplication> MasterList = new List<ByPrice_WorkTimeApplication>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ByPrice_WorkTimeApplication MasterObj = new ByPrice_WorkTimeApplication();
                    MasterObj.Date_Time= DateTime.Parse(ds.Tables[0].Rows[i]["Date_time"].ToString());
                    MasterObj.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                    MasterObj.NumB =ds.Tables[0].Rows[i]["NumB"].ToString();
                    MasterObj.Reason = ds.Tables[0].Rows[i]["Reason"].ToString();
                    MasterObj.Work_desc = ds.Tables[0].Rows[i]["Work_desc"].ToString();
                    //MasterObj.Time_Quantum_Start = (ds.Tables[0].Rows[i]["Time_Quantum_Start"].ToString());
                    //MasterObj.Time_Quantum_Due = (ds.Tables[0].Rows[i]["Time_Quantum_Due"].ToString());
                    MasterObj.Time_Quantum_Start = DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Start"].ToString());
                    MasterObj.Time_Quantum_Due = DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Due"].ToString());
                    MasterObj.BaseNumber = ds.Tables[0].Rows[i]["BaseNumber"].ToString();
                    MasterObj.Amount =Convert.ToInt32(ds.Tables[0].Rows[i]["Amount"].ToString());
                    MasterObj.department = ds.Tables[0].Rows[i]["department"].ToString();
                    MasterObj.Reamrk = ds.Tables[0].Rows[i]["Reamrk"].ToString();
                    MasterObj.Time_Quantum =Convert.ToDecimal( ds.Tables[0].Rows[i]["Time_Quantum"].ToString());
                    //MasterObj.Time_Quantum2 = MasterObj.GetTime_Quantum2(DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Start"].ToString()),DateTime.Parse(ds.Tables[0].Rows[i]["Time_Quantum_Due"].ToString())) ; 
                    MasterList.Add(MasterObj);
                }
                this.bindingSource1.DataSource = MasterList;
            }


        }

    }
}
