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
using PH.Platform.BO;
using PH.Platform.UI.CS;
using System.Data.SqlClient;
using System.Data.Sql;
using PH.MobileQC.BO;


namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class RptofflineFullAuditQualityPerfomance_Main : DevExpress.XtraReports.UI.XtraReport
    {


        //private DataTable SubReportDataTable;

        public RptofflineFullAuditQualityPerfomance_Main(string cbFactory, string cbWO, string cbStyle, string cbLine, string cbProject, int cbReportType, string cbClolor)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;


            GetDataSet(cbFactory, cbWO, cbStyle, cbLine, cbProject, cbClolor);
        }
         

        public void GetDataSet( string cbFactory, string cbWO, string cbStyle, string cbLine, string cbProject, string cbClolor)
         {
            //string str = "Data Source=10.2.1.10;Initial Catalog=PH.MobileQC;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
            //SqlConnection cn = new SqlConnection(str);
            //SqlDataAdapter da = new SqlDataAdapter();
            ////MobileQCDataContext db = new MobileQCDataContext();
            //DataSet ds = new DataSet();
            //da.SelectCommand = new SqlCommand("FullAuditQualityPerformanceReport_up", cn);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar,20));
            //da.SelectCommand.Parameters["@Factory"].Value = cbFactory;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@WO", SqlDbType.VarChar, 20));
            //da.SelectCommand.Parameters["@WO"].Value = cbWO;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            //da.SelectCommand.Parameters["@Style"].Value = cbStyle;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            //da.SelectCommand.Parameters["@Line"].Value = cbLine;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@ProjectNum", SqlDbType.VarChar, 20));
            //da.SelectCommand.Parameters["@ProjectNum"].Value = cbProject;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@Color", SqlDbType.VarChar, 20));
            //da.SelectCommand.Parameters["@Color"].Value = cbClolor;

            //da.Fill(ds);

             MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
             string Sqlstr = "exec FullAuditQualityPerformanceReport  '{0}', '{1}','{2}', '{3}','{4}', '{5}'";
             Sqlstr = string.Format(Sqlstr, cbFactory, cbWO, cbStyle, cbLine, cbProject, cbClolor);
             DataSet ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "dtOpsSpecSheet");



            int b = ds.Tables[0].Rows.Count;
            int c = ds.Tables[1].Rows.Count;
            if (b > 0)
            {
                int a = 0, d = 0;
                List<OfflineAQLAduitQualityMaster_Main> MasterList = new List<OfflineAQLAduitQualityMaster_Main>();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    OfflineAQLAduitQualityMaster_Main MasterObj = new OfflineAQLAduitQualityMaster_Main();
                    MasterObj.QC_time = DateTime.Parse(ds.Tables[0].Rows[i]["QCtime"].ToString());
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
                    MasterObj.DefectName_top3 = ds.Tables[0].Rows[i]["DefectName_top3"].ToString();
                    MasterObj.DefPercent = ds.Tables[0].Rows[i]["DefPercent"].ToString();
                    MasterObj.AuditResult = ds.Tables[0].Rows[i]["AuditResult"].ToString();
                    if (ds.Tables[0].Rows[i]["audittimes"].ToString() == "2.0" || ds.Tables[0].Rows[i]["audittimes"].ToString() == "2.1")
                    {   
                        MasterObj.MasterID = string.Format("Re-FINAL-{0}", a+1);
                        a++;
                     }
                    else if (ds.Tables[0].Rows[i]["audittimes"].ToString() == "1.0")
                    {                   
                        MasterObj.MasterID = string.Format("FINAL-{0}",d+1);
                        d++;
                    }
                    MasterList.Add(MasterObj);
                }
                bindingSource1.DataSource = MasterList.OrderBy(p => p.MasterID);                 
            }

            //SubReportDataTable = ds.Tables[1];

            RptofflineFullAuditQualityPerfomance_Sub rpt_Sub = new RptofflineFullAuditQualityPerfomance_Sub(ds.Tables[1]);
            xrSubreport1.ReportSource = rpt_Sub;

            //if (c > 0)
            //{
            //    List<OfflineAQLAduitQualityDetail> DetailList = new List<OfflineAQLAduitQualityDetail>();
            //    for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
            //    {
            //        OfflineAQLAduitQualityDetail DetailObj = new OfflineAQLAduitQualityDetail();
            //        DetailObj.Position = ds.Tables[1].Rows[i]["Position"].ToString();
            //        DetailObj.DefectDescriptn = ds.Tables[1].Rows[i]["DefectDescriptn"].ToString();
            //        DetailObj.Marjo = int.Parse(ds.Tables[1].Rows[i]["Marjo"].ToString());
            //        DetailObj.Minor = int.Parse(ds.Tables[1].Rows[i]["Minor"].ToString());
            //        DetailList.Add(DetailObj);
            //    }
            //        bindingSource2.DataSource = DetailList;
            //}

            ///*獲取auditresult，audittimes*/
            //string auditresult = ds.Tables[0].Rows[0]["auditresult"].ToString();
            //string audittimes = ds.Tables[0].Rows[0]["audittimes"].ToString();
            //string _ss = "";
            //if (audittimes == "2.1")
            //{
            //    int m = 0;
            //}

            //if (audittimes == "1.0")
            //    _ss = "1st";

            //if (audittimes.Substring(0, 1) == "2")
            //    _ss = "2nd";

            //if (audittimes.Substring(0, 1) == "3")
            //    _ss = "3rd";

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

        private void RptofflineAQLQualityPerfomance_Main_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //RptofflineAQLQualityPerfomance_Sub rpt_Sub = new RptofflineAQLQualityPerfomance_Sub(this.SubReportDataTable);
            //xrSubreport1.ReportSource = rpt_Sub;

        }
    }
}
