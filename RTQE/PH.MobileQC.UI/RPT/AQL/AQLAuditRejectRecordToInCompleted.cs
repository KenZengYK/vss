using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLAuditRejectRecordToInCompleted : DevExpress.XtraReports.UI.XtraReport
    {

        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        public AQLAuditRejectRecordToInCompleted(string AFactory, string AChechComletedIs)
        {
            InitializeComponent();
            string str = string.Format("exec sp_AQLRejectRecordToBeCompletedReport '{0}','{1}'", AFactory, AChechComletedIs);
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");
           
            bindingSource1.DataSource = AList(ds);

            xrFactory.Text = AFactory;
            //xrllDate.Text = ADateFrom.ToString("yyyy-MM-dd") + " ~ " + ADateTo.ToString("yyyy-MM-dd");
            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");


            ReportHelper reportHelper = new ReportHelper("00000025");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;
            //title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;
        }

        public List<sp_AQLRejectRecordToBeCompletedReportClass> AList(DataSet ds)
        {
            List<sp_AQLRejectRecordToBeCompletedReportClass> AQLDefectList = ds.Tables[0].AsEnumerable().Select(dr => new sp_AQLRejectRecordToBeCompletedReportClass()
            {
                Customer =dr["Customer"].ToString(),
                Line = dr["Line"].ToString(),
                QN = dr["QN"].ToString(),
                Style = dr["Style"].ToString(),
                ShipmentQty =int.Parse( dr["ShipmentQty"].ToString()),
                AQLLevel = dr["AQLLevel"].ToString(),
                SubAQLLevel = dr["SubAQLLevel"].ToString(),
                ReadyExamQty = int.Parse(dr["ReadyExamQty"].ToString()),
                LotNo = int.Parse(dr["LotNo"].ToString()),
                QC_Time =Convert.ToDateTime( dr["QC_Time"].ToString()).ToString("dd-MM"),
                SampleQty =int.Parse( dr["SampleQty"].ToString()),
                MarjonRejQty = int.Parse(dr["MarjonRejQty"].ToString()),
                MinorRejQty = int.Parse(dr["MinorRejQty"].ToString()),
                ExamResult = dr["ExamResult"].ToString(),
                ExamTimes = dr["ExamTimes"].ToString(),

                InlineInspector = dr["InlineInspector"].ToString(),
                EndlineInspector = dr["EndlineInspector"].ToString(),
                MobileAuditor_A = dr["MobileAuditor_A"].ToString(),
                QualAuditor_A = dr["QualAuditor_A"].ToString(),
                LineLeader_A = dr["LineLeader_A"].ToString(),
                Supervisor_A = dr["Supervisor_A"].ToString()

            }).ToList();
            return AQLDefectList;

        }



    }
}
