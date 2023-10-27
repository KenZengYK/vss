using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Collections.Generic;
using PH.PHGDB2.BO;
using PH.Platform.BO;
using System.Data.SqlClient;

namespace PH.HDO.UI.ByPiece
{
    public partial class WareHousePriceReport_Summary : DevExpress.XtraReports.UI.XtraReport
    {
        public WareHousePriceReport_Summary()
        {
            InitializeComponent();
        }

        public WareHousePriceReport_Summary(DateTime StratTime, DateTime DueTime, string ID, string Name, int Flag)
        {
            InitializeComponent();

            GetDataSet1(StratTime, DueTime, ID, Name, Flag);

            xrLabel7.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel8.Text = StratTime.ToString("yyyy-MM-dd");
            xrLabel9.Text = DueTime.ToString("yyyy-MM-dd");

        }

        //public void GetDataSet(DataTable tb) 
        //{
        //    int b = tb.Rows.Count;
        //    if (b > 0) 
        //    {
        //        List<WareHouseReport_Sub> MasterList = new List<WareHouseReport_Sub>();
        //        for (int i = 0; i < tb.Rows.Count; i++)
        //        {
        //            WareHouseReport_Sub Masterobj = new WareHouseReport_Sub();
        //            Masterobj.NumB = i + 1;
        //            Masterobj.OrderID = tb.Rows[i]["OrderID"].ToString();
        //            Masterobj.OrderMan = tb.Rows[i]["OrderMan"].ToString();
        //            Masterobj.SHA_SUM = tb.Rows[i]["SHA_SUM"].ToString();
        //            Masterobj.Price_SUM = tb.Rows[i]["Price_SUM"].ToString();

        //            Masterobj.AddTime = tb.Rows[i]["AddTime"].ToString();
        //            Masterobj.AddTimePriceAmount = tb.Rows[i]["AddTimePriceAmount"].ToString();
        //            Masterobj.AllPrice = tb.Rows[i]["AllPrice"].ToString();

        //            MasterList.Add(Masterobj);

        //        }
        //        this.bindingSource1.DataSource = MasterList;
        //    }
        //}


        public void GetDataSet1(DateTime StratTime, DateTime DueTime, string ID, string Name,int Flag)
        {
           
            //SqlCommand da = new SqlCommand();
            //DataSet ds = new DataSet();
            //da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            //da.CommandType = CommandType.StoredProcedure;
            //da.CommandText = "WareHouse_ProductReport";

            //da.Parameters.Add("@StartDate", SqlDbType.NVarChar, 100);
            //da.Parameters["@StartDate"].Value = StratTime.ToString("yyyy-MM-dd");

            //da.Parameters.Add("@DueDate", SqlDbType.NVarChar, 100);
            //da.Parameters["@DueDate"].Value = DueTime.ToString("yyyy-MM-dd");

            //da.Parameters.Add("@Number", SqlDbType.NVarChar, 20);
            //da.Parameters["@Number"].Value = ID;

            //da.Parameters.Add("@Name", SqlDbType.NVarChar, 20);
            //da.Parameters["@Name"].Value = Name;


            //da.Parameters.Add("@orderType", SqlDbType.NVarChar, 20);
            //da.Parameters["@orderType"].Value = "";


            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = da;

            //dap.Fill(ds);


            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            string SqlStr = "exec WareHouse_ProductReport '{0}', '{1}', '{2}', '{3}','{4}','{5}'";
            SqlStr = string.Format(SqlStr, StratTime.ToString("yyyy-MM-dd"), DueTime.ToString("yyyy-MM-dd"), ID, Name,"", Flag);
            DataSet ds = Context.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");
            
            if (ds.Tables[1].Rows.Count > 0)
            {
                List<WareHouseReport_Sub> MasterList = new List<WareHouseReport_Sub>();
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    WareHouseReport_Sub Masterobj = new WareHouseReport_Sub();
                    Masterobj.NumB = i + 1;
                    Masterobj.OrderID = ds.Tables[1].Rows[i]["OrderID"].ToString();
                    Masterobj.OrderMan = ds.Tables[1].Rows[i]["OrderMan"].ToString();
                    Masterobj.SHA_SUM =ds.Tables[1].Rows[i]["SHA_SUM"]!=DBNull.Value?Convert.ToDouble(ds.Tables[1].Rows[i]["SHA_SUM"].ToString()):0;
                    Masterobj.Price_SUM =ds.Tables[1].Rows[i]["Price_SUM"]!=DBNull.Value?Convert.ToDouble(ds.Tables[1].Rows[i]["Price_SUM"].ToString()):0;

                    Masterobj.AddTime = ds.Tables[1].Rows[i]["AddTime"]!=DBNull.Value?Convert.ToDouble(ds.Tables[1].Rows[i]["AddTime"].ToString()):0;
                    Masterobj.AddTimePriceAmount =ds.Tables[1].Rows[i]["AddTimePriceAmount"]!=DBNull.Value?Convert.ToDouble(ds.Tables[1].Rows[i]["AddTimePriceAmount"].ToString()):0;
                    Masterobj.AllPrice =ds.Tables[1].Rows[i]["AllPrice"]!=DBNull.Value?Convert.ToDouble(ds.Tables[1].Rows[i]["AllPrice"].ToString()):0;

                    MasterList.Add(Masterobj);

                }
                this.bindingSource1.DataSource = MasterList;
            }


        }




    }
}
