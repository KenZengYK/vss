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
    public partial class RptofflineFullAuditQualityPerfomance_Sub : DevExpress.XtraReports.UI.XtraReport
    {




        public RptofflineFullAuditQualityPerfomance_Sub(DataTable tb)
        {
            InitializeComponent();

            GetDataSet(tb);
        }


        public void GetDataSet(DataTable tb)
         {
            
            int b = tb.Rows.Count;
           
            if (b > 0)
            {
                int a = 0, c = 0; string MasterIDName1 = "", MasterIDName2="";
                List<OfflineAQLAduitQualityMaster_Sub> MasterList = new List<OfflineAQLAduitQualityMaster_Sub>();
                for (int i = 0; i < tb.Rows.Count; i++)
                {
                    OfflineAQLAduitQualityMaster_Sub MasterObj = new OfflineAQLAduitQualityMaster_Sub();
                    MasterObj.QC_time = DateTime.Parse(tb.Rows[i]["QCtime"].ToString());
                    MasterObj.Position = tb.Rows[i]["Position"].ToString();
                    MasterObj.DefectDescriptn = tb.Rows[i]["DefectDescriptn"].ToString();
                    MasterObj.Productqty = tb.Rows[i]["Productqty"].ToString();
                    MasterObj.QCCount = tb.Rows[i]["QCCount"].ToString();
                    MasterObj.Marjo = tb.Rows[i]["Marjo"].ToString();
                    MasterObj.Minor = tb.Rows[i]["Minor"].ToString();
                    MasterObj.AuditResult = tb.Rows[i]["AuditResult"].ToString();
                    MasterObj.QCMan = tb.Rows[i]["QCMan"].ToString();

                    MasterObj.WsConfirm = tb.Rows[i]["WsConfirm"].ToString();
                    MasterObj.QAConfirm = tb.Rows[i]["QAConfirm"].ToString();
                    MasterObj.SIConfirm = tb.Rows[i]["SIConfirm"].ToString();
                    MasterObj.ImproveActionPlan = tb.Rows[i]["ImproveActionPlan"].ToString();

                    MasterObj.DefPercent = tb.Rows[i]["DefPercent"].ToString();
                    MasterObj.AcceptableLeave = MasterObj.GetLeave(tb.Rows[i]["AuditType"].ToString(), tb.Rows[i]["SubAuditType"].ToString(), tb.Rows[i]["Productqty"].ToString());
                    if (tb.Rows[i]["audittimes"].ToString() == "2.0" || tb.Rows[i]["audittimes"].ToString() == "3.0" || tb.Rows[i]["audittimes"].ToString() == "2.1")
                    {
                        if (MasterIDName1 == "")
                        {
                            MasterObj.MasterID = string.Format("Re-FINAL-{0}", a + 1);
                            MasterIDName1 = tb.Rows[i]["QCtime"].ToString();

                        }
                        else if (MasterIDName1 == tb.Rows[i]["QCtime"].ToString())
                        {
                            MasterObj.MasterID = string.Format("Re-FINAL-{0}", a + 1);

                        }
                        else if (MasterIDName1 != tb.Rows[i]["QCtime"].ToString())
                        {
                            a++;
                            MasterObj.MasterID = string.Format("Re-FINAL-{0}", a + 1);
                            MasterIDName1 = tb.Rows[i]["QCtime"].ToString();
                           

                        }

                    }
                    if (tb.Rows[i]["audittimes"].ToString() == "1.0")
                    {
                        if (MasterIDName2 == "")
                        { 
                            MasterObj.MasterID = string.Format("FINAL-{0}", c + 1);
                            MasterIDName2 = tb.Rows[i]["QCtime"].ToString();

                        }
                        else if (MasterIDName2 == tb.Rows[i]["QCtime"].ToString())
                        {
                            MasterObj.MasterID = string.Format("FINAL-{0}", c + 1);

                        }
                        else if (MasterIDName2 != tb.Rows[i]["QCtime"].ToString())
                        {
                            c++;
                            MasterObj.MasterID = string.Format("FINAL-{0}", c + 1);
                            MasterIDName2 = tb.Rows[i]["QCtime"].ToString();
                            

                        }

                    }
                    MasterList.Add(MasterObj);
                }
               // var aaa = MasterList.Select(p => p.MasterID).Distinct().ToList();
                bindingSource1.DataSource = MasterList;
                    
            }
       
        }  
        private void bindingSource1_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("ImproveActionPlan") != null && this.GetCurrentColumnValue("ImproveActionPlan").ToString() != "")
            {

                this.xrLabel6.Visible = true;
                this.xrLabel8.Visible = true;
                this.xrLabel9.Visible = true;
            }
            else
            {
                this.xrLabel6.Visible = false;
                this.xrLabel8.Visible = false;
                this.xrLabel9.Visible = false;
            }
        }
    }
}
