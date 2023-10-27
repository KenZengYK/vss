using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using PH.MobileQC.BO;
using System.Linq;

namespace PH.MobileQC.UI.AQL
{
    public partial class AQLPerfDefectPointListReport_Sub_V1 : DevExpress.XtraReports.UI.XtraReport
    {
        DataTable DbSubHeader = new DataTable();
        Dictionary<string, string[]> Dict_Defect = new Dictionary<string, string[]>();
        ArrayList WorkShopList = new ArrayList();
        DataTable DbReport = new DataTable();
        Dictionary<string, string[]> Dict_SumWs = new Dictionary<string, string[]>();
        Dictionary<string, string[]> Dict_SumCust = new Dictionary<string, string[]>();
        string DateRange = "", Fac = "";
        //int ProdTotal = 0, ChkTotal = 0, WeekNum = 0;
        int ProdTotal = 0, ChkTotal = 0; string WeekNum = "0";


        public AQLPerfDefectPointListReport_Sub_V1()
        {
            InitializeComponent();
        }

    
        DataTable DbHeader, DbDetail, DbDetailSub, DbHeaderDefectTop9, DbMainDefect, DbSub, DbTimes_Cust, DbTimes_Ws;

        public AQLPerfDefectPointListReport_Sub_V1(DataSet ds)
        {
            InitializeComponent();
            DbHeader = ds.Tables[0];
            DbDetail = ds.Tables[1];
            DbDetailSub = ds.Tables[2];
            DbHeaderDefectTop9 = ds.Tables[3];
            DbTimes_Ws = ds.Tables[4];
            DbTimes_Cust = ds.Tables[5];

            if (DbDetailSub.Rows.Count > 2)
            {
                List<AQLPerfDefectPointListReportClass_Sub> RptSource = DbDetailSub.AsEnumerable().Select(dr => new AQLPerfDefectPointListReportClass_Sub()
                {
                    Customer = dr["Customer"].ToString(),
                    DefectQty1 = dr["MarjorDefectQty1"].ToString() + " / " + dr["MinorDefectQty1"].ToString(),
                    DefectQty2 = dr["MarjorDefectQty2"].ToString() + " / " + dr["MinorDefectQty2"].ToString(),
                    DefectQty3 = dr["MarjorDefectQty3"].ToString() + " / " + dr["MinorDefectQty3"].ToString(),
                    DefectQty4 = dr["MarjorDefectQty4"].ToString() + " / " + dr["MinorDefectQty4"].ToString(),
                    DefectQty5 = dr["MarjorDefectQty5"].ToString() + " /  " + dr["MinorDefectQty5"].ToString(),
                    DefectQty6 = dr["MarjorDefectQty6"].ToString() + " /  " + dr["MinorDefectQty6"].ToString(),
                    DefectQty7 = dr["MarjorDefectQty7"].ToString() + " / " + dr["MinorDefectQty7"].ToString(),
                    DefectQty8 = dr["MarjorDefectQty8"].ToString() + " / " + dr["MinorDefectQty8"].ToString(),
                    DefectQty9 = dr["MarjorDefectQty9"].ToString() + " / " + dr["MinorDefectQty9"].ToString(),
                    OtherDefectQty = dr["OtherMarjorDefectQty"].ToString() + " / " + dr["OtherMinorDefectQty"].ToString(),
                    DefectTypeCount = int.Parse(dr["DefectTypeCount"].ToString() == "" ? "0" : dr["DefectTypeCount"].ToString()),
                    TotalMarjorQty = int.Parse(dr["TotalMarjorQty"].ToString() == "" ? "0" : dr["TotalMarjorQty"].ToString()),
                    TotalMinorQty = int.Parse(dr["TotalMinorQty"].ToString() == "" ? "0" : dr["TotalMinorQty"].ToString()),
                    ShipmentQty = int.Parse(dr["ShipmentQty"].ToString() == "" ? "0" : dr["ShipmentQty"].ToString()),
                    SampleQty = int.Parse(dr["SampleQty"].ToString() == "" ? "0" : dr["SampleQty"].ToString()),
                    RejectMarjorQty = int.Parse(dr["RejectMarjorQty"].ToString() == "" ? "0" : dr["RejectMarjorQty"].ToString()),
                    RejectMinorQty = int.Parse(dr["RejectMinorQty"].ToString() == "" ? "0" : dr["RejectMinorQty"].ToString()),
                    TotalMarjorPercent = double.Parse(dr["TotalMarjorPercent"].ToString() == "" ? "0" : dr["TotalMarjorPercent"].ToString()),
                    TotalMinorPercent = double.Parse(dr["TotalMinorPercent"].ToString() == "" ? "0" : dr["TotalMinorPercent"].ToString()),


                }).ToList();
                this.bsDetail.DataSource = RptSource;
            }

            

        }

        public ReportHeaderBand ReportHeaderObject
        {
            get
            {
                return this.ReportHeader;
            }
        }

        public PageHeaderBand GetPageHeader
        {
            get
            {
                return this.PageHeader;
            }
        }

        


        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
    

            for (int i = 0; i < DbTimes_Ws.Rows.Count; i++) 
            {
                this.FindControl("xrWsH" + (i + 1), true).Text = "Ws";
                this.FindControl("xrWsHP" + (i + 1), true).Text = "FPY";
                this.FindControl("xrWs" + (i + 1), true).Text = DbTimes_Ws.Rows[i]["Workshop"].ToString();
                this.FindControl("xrWAcc" + (i + 1), true).Text = DbTimes_Ws.Rows[i]["FPY"].ToString();
            }
            

            for (int i = 0; i < DbTimes_Cust.Rows.Count; i++)
            {
                this.FindControl("xrCuH" + (i + 1), true).Text = "Cust";
                this.FindControl("xrCuPH" + (i + 1), true).Text = "FPY";
                this.FindControl("xrCust" + (i + 1), true).Text = DbTimes_Cust.Rows[i]["Customer"].ToString();
                this.FindControl("xrCAcc" + (i + 1), true).Text = DbTimes_Cust.Rows[i]["FPY"].ToString();
            }

        }

   






    }
}
