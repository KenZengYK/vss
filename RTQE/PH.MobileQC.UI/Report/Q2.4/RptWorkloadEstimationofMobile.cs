using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Data;
using System.Linq;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
	public partial class RptWorkloadEstimationofMobile : DevExpress.XtraReports.UI.XtraReport
	{

        ReportHelper reportHelper;
        public RptWorkloadEstimationofMobile(string Fty, string FormDate, string ToDate, string AFlag)
		{
			InitializeComponent();

            xrLabel3.Text ="Time Period : From " + FormDate + " To " + ToDate;

            if (AFlag == "A")
            {
                reportHelper = new ReportHelper("00000005");
            }
            else
            {
                reportHelper = new ReportHelper("00000035");
            }
            xrLabel5.Text = reportHelper.ReportInfo.ReportCode;
            xrLabel1.Text = reportHelper.ReportInfo.ReportName_EN;

            string str = string.Format("exec sp_QCManWorkLoad '{0}','{1}','{2}','{3}'", Fty, FormDate, ToDate, AFlag);
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "Opt");

            List<sp_QCManWorkLoadClass> Alist = ds.Tables[0].AsEnumerable().Select(dr => 
                new sp_QCManWorkLoadClass {

                    Factory = dr["Factory"].ToString(),
                    Auditor = dr["Auditor"].ToString(),
                    WorkLoadRank = Convert.ToInt32(dr["WorkLoadRank"].ToString()),
                    TargetAuditPer = Convert.ToDecimal(dr["TargetAuditPer"].ToString()),
                    FirstAuditCount = Convert.ToInt32(dr["FirstAuditCount"].ToString()),
                    ReAduitCount = Convert.ToInt32(dr["ReAduitCount"].ToString()),
                    TotalAudit = Convert.ToInt32(dr["TotalAudit"].ToString()),
                    TargetAuditCount = Convert.ToInt32(dr["TargetAuditCount"].ToString())                
                }).ToList();


            this.bindingSource1.DataSource = Alist;


		}

        private void xrTableCell12_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            sp_QCManWorkLoadClass obj = this.GetCurrentRow() as sp_QCManWorkLoadClass;
            if(obj == null)return;
            xrTableCell12.ForeColor = obj.TargetAuditPer < 90?Color.Red:Color.Black;
        }

	}
}
