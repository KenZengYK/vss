using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using PH.PHGDB2.BO;
using PH.Platform.BO;
using System.Collections.Generic;


namespace PH.HDO.UI.ByPiece
{
    public partial class WareHousePriceReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WareHousePriceReport()
        {
            InitializeComponent();

        }
        public string GroupName = "";
        public WareHousePriceReport(DateTime StratTime, DateTime DueTime, string ID, string Name, int orderType, int Flag)
        {
            InitializeComponent();
            GetDataSet(StratTime, DueTime, ID, Name, orderType,Flag);

            xrLabel7.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel8.Text = StratTime.ToString("yyyy-MM-dd");
            xrLabel9.Text = DueTime.ToString("yyyy-MM-dd");
             GroupName = Flag == 1 ? "辅料組" : (Flag == 2 ? "主料組" : "棉杯組");
            xrLabel3.Text = "組別 ： " + GroupName;
            if (orderType == 1)
            {
                checkEdit2.Checked = true;

            }
            else { checkEdit1.Checked = true; }
        }


        public void GetDataSet(DateTime StratTime, DateTime DueTime, string ID, string Name, int orderType, int Flag) 
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();   
         
            //SqlCommand da = new SqlCommand();
            //DataSet ds = new DataSet();
            //da.Connection = new SqlConnection(Context.Connection.ConnectionString);
            //da.CommandType = CommandType.StoredProcedure;
            //da.CommandText = "WareHouse_ProductReport";

            //da.Parameters.Add("@StartDate", SqlDbType.NVarChar, 100);                
            //da.Parameters["@StartDate"].Value = StratTime.ToString("yyyy-MM-dd");

            //da.Parameters.Add("@DueDate", SqlDbType.NVarChar, 100);
            //da.Parameters["@DueDate"].Value = DueTime.ToString("yyyy-MM-dd");

            //da.Parameters.Add("@Number", SqlDbType.NVarChar,20);
            //da.Parameters["@Number"].Value = ID;

            //da.Parameters.Add("@Name", SqlDbType.NVarChar, 20);
            //da.Parameters["@Name"].Value = Name;

            //da.Parameters.Add("@orderType", SqlDbType.NVarChar, 20);
            //da.Parameters["@orderType"].Value = orderType;

            //SqlDataAdapter dap = new SqlDataAdapter();
            //dap.SelectCommand = da;

            //dap.Fill(ds);
            string SqlStr = "exec WareHouse_ProductReport '{0}', '{1}', '{2}', '{3}', '{4}', '{5}'";
            SqlStr = string.Format(SqlStr, StratTime.ToString("yyyy-MM-dd"), DueTime.ToString("yyyy-MM-dd"), ID, Name, orderType,Flag);
            DataSet ds = Context.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");



            int b = ds.Tables[0].Rows.Count;
            int c = ds.Tables[1].Rows.Count;

            if (b > 0) 
            {
                List<WareHouseReport> MasterList=new List<WareHouseReport>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    WareHouseReport MasterObj = new WareHouseReport();
                    MasterObj.NumB = i + 1;
                    MasterObj.OrderID = ds.Tables[0].Rows[i]["OrderID"].ToString();
                    MasterObj.OrderMan = ds.Tables[0].Rows[i]["OrderMan"].ToString();
                    MasterObj.Calculate_Type = ds.Tables[0].Rows[i]["Calculate_Type"].ToString();
                    MasterObj.MaterialType = ds.Tables[0].Rows[i]["MaterialType"].ToString();
                    MasterObj.Date_time =  DateTime.Parse(ds.Tables[0].Rows[i]["Date_time"].ToString());
                    MasterObj.IDNUM = ds.Tables[0].Rows[i]["IDNUM"].ToString();
                    MasterObj.SAH =ds.Tables[0].Rows[i]["SAH"]!=DBNull.Value?Convert.ToDouble(ds.Tables[0].Rows[i]["SAH"].ToString()):0;
                    MasterObj.Pirice =ds.Tables[0].Rows[i]["Pirice"]!=DBNull.Value?Convert.ToDouble(ds.Tables[0].Rows[i]["Pirice"].ToString()):0;
                    MasterObj.Remark = ds.Tables[0].Rows[i]["Remark"].ToString();
                    MasterObj.Calculate_Item = ds.Tables[0].Rows[i]["Calculate_Item"].ToString();
                    MasterObj.Calculate_SPrice =ds.Tables[0].Rows[i]["Calculate_SPrice"]!=DBNull.Value?Convert.ToDouble(ds.Tables[0].Rows[i]["Calculate_SPrice"].ToString()):0;

                    MasterList.Add(MasterObj);
                }
                this.bindingSource1.DataSource = MasterList;
            }

            string SubGroupName = Flag == 1 ? "辅料組" : (Flag == 2 ? "主料組" : "棉杯組");
            SubGroupName = "組別 ： " + SubGroupName;
            WareHousePriceReport_Sub rpt_Sub = new WareHousePriceReport_Sub(ds.Tables[1], StratTime, DueTime, SubGroupName);
          
            xrSubreport1.ReportSource = rpt_Sub;

            //xrSubreport2.Visible = Flag == 1 ? true : false;
            ELWFilteringMachineReport rpt_Sub2 = new ELWFilteringMachineReport(ds, StratTime, DueTime);
            xrSubreport2.ReportSource = rpt_Sub2;
        }
    }
}
