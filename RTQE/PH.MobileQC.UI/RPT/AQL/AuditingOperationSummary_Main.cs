using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS;
using System.Data.SqlClient;
using System.Data.Sql;  


namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AuditingOperationSummary_Main : DevExpress.XtraReports.UI.XtraReport
    {




        public AuditingOperationSummary_Main(string cbFactory, string cbWO, string cbStyle, string cbLine, string cbProject, int cbReportType, string cbClolor)
        {
            InitializeComponent();

            GetDataSet(cbFactory, cbWO, cbStyle, cbLine, cbProject, cbClolor);
        }
         

        public void GetDataSet( string cbFactory, string cbWO, string cbStyle, string cbLine, string cbProject, string cbClolor)
         {
            string str = "Data Source=10.2.1.10;Initial Catalog=PH.MobileQC;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
            SqlConnection cn = new SqlConnection(str);
            SqlDataAdapter da = new SqlDataAdapter();
            //MobileQCDataContext db = new MobileQCDataContext();
            DataSet ds = new DataSet();
            da.SelectCommand = new SqlCommand("AQL", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar,20));
            da.SelectCommand.Parameters["@Factory"].Value = cbFactory;


            da.SelectCommand.Parameters.Add(new SqlParameter("@WO", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@WO"].Value = cbWO;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@Style"].Value = cbStyle;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@Line"].Value = cbLine;

            da.SelectCommand.Parameters.Add(new SqlParameter("@ProjectNum", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@ProjectNum"].Value = cbProject;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Color", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters["@Color"].Value = cbClolor;

            da.Fill(ds);

            int b = ds.Tables[0].Rows.Count;
            int c = ds.Tables[1].Rows.Count;
            if (b > 0)
            {
                List<OfflineAQLAduitQualityMaster> MasterList = new List<OfflineAQLAduitQualityMaster>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    OfflineAQLAduitQualityMaster MasterObj = new OfflineAQLAduitQualityMaster();
                    MasterObj.QC_time = DateTime.Parse(ds.Tables[0].Rows[i]["QC_time"].ToString());
                    MasterObj.Style = ds.Tables[0].Rows[i]["Style"].ToString();
                    MasterObj.QCMan = ds.Tables[0].Rows[i]["QCMan"].ToString();
                    MasterObj.CustomerPO = ds.Tables[0].Rows[i]["CustomerPO"].ToString();
                    MasterObj.ColorName = ds.Tables[0].Rows[i]["ColorName"].ToString();
                    MasterObj.Factory = ds.Tables[0].Rows[i]["Factory"].ToString();
                    MasterObj.StyleType = ds.Tables[0].Rows[i]["StyleType"].ToString();
                    MasterObj.Project = ds.Tables[0].Rows[i]["Project"].ToString();
                    MasterObj.WO = ds.Tables[0].Rows[i]["WO"].ToString();
                    MasterObj.Line = ds.Tables[0].Rows[i]["Line"].ToString();
                    MasterObj.Color = ds.Tables[0].Rows[i]["Color"].ToString();
                    MasterObj.QNQty = ds.Tables[0].Rows[i]["QNQty"].ToString();
                    MasterObj.AuditType = ds.Tables[0].Rows[i]["AuditType"].ToString();
                    MasterObj.QCCount = ds.Tables[0].Rows[i]["QCCount"].ToString();
                    MasterObj.PassLevel = ds.Tables[0].Rows[i]["PassLevel"].ToString();
                    MasterObj.POQuantity = ds.Tables[0].Rows[i]["POQuantity"].ToString();
                    MasterList.Add(MasterObj);
                }
                    bindingSource1.DataSource = MasterList;
                    
            }

            if (c > 0)
            {
                List<OfflineAQLAduitQualityDetail> DetailList = new List<OfflineAQLAduitQualityDetail>();
                for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                {
                    OfflineAQLAduitQualityDetail DetailObj = new OfflineAQLAduitQualityDetail();
                    DetailObj.Position = ds.Tables[1].Rows[i]["Position"].ToString();
                    DetailObj.DefectDescriptn = ds.Tables[1].Rows[i]["DefectDescriptn"].ToString();
                    DetailObj.Marjo = int.Parse(ds.Tables[1].Rows[i]["Marjo"].ToString());
                    DetailObj.Minor = int.Parse(ds.Tables[1].Rows[i]["Minor"].ToString());
                    DetailList.Add(DetailObj);
                }
                    bindingSource2.DataSource = DetailList;
            }

            /*獲取auditresult，audittimes*/
            string auditresult = ds.Tables[0].Rows[0]["auditresult"].ToString();
            string audittimes = ds.Tables[0].Rows[0]["audittimes"].ToString();
            string _ss = "";
            if (audittimes == "2.1")
            {
                int m = 0;
            }

            if (audittimes == "1.0")
                _ss = "1st";

            if (audittimes.Substring(0, 1) == "2")
                _ss = "2nd";

            if (audittimes.Substring(0, 1) == "3")
                _ss = "3rd";

            //xrLabel17.Text = _ss;
            //xrLabel27.Text = auditresult == "P" ? "ACC" : "Rej";
            

            
            

            
        }  


        //public static DataTable SelectTableResult(string sql,CommandType type,SqlParameter[] pars) 
        //{
        //        SqlConnection conn = new SqlConnection();
        //        conn.ConnectionString = "Data Source=10.2.1.10;Initial Catalog=PH.MobileQC;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
        //        conn.Open();
        //         SqlDataAdapter sda = new SqlDataAdapter(sql,conn);
        //         sda.SelectCommand.CommandType = type;
        //    if(pars!=null&&pars.Length>0)
        //    {
               
        //            sda.SelectCommand.Parameters.AddRange(pars);

                
        //    }
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    conn.Dispose();
        //    return dt;
            
        //}

     



        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }
    }
}
