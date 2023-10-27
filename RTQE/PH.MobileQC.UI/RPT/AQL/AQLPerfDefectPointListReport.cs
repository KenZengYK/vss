using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Linq;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AQL
{
    public partial class AQLPerfDefectPointListReport : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", CurWorkshop = "", Flag = "",Rtype = "",WoList="",CustomerList="",WsList="",LineList="";

        int SumType = 0, DefectTotal = 0, ProductTotal = 0, CheckTotal = 0; string  WeekNum = "0";

        DataTable DbHeader, DbDetail, DbDetailSub, DbHeaderDefectTop9, DbMainDefect, DbSub, DbTimes_Cust, DbTimes_Ws, DbDefCodeCountGroup;

        AQLPerfDefectPointListReport_Sub _subRpt;
        

        public AQLPerfDefectPointListReport()
        {
            InitializeComponent();

        }

        public AQLPerfDefectPointListReport(string fac, int sumtype, string startdate, string enddate, string flag, string daterange, string rtype, string custlist, string wolist, string wslist, string linelist, string wknum)//int wknum)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000015");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            xrFactory.Text = fac;
            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
            // Role = role;
            Flag = flag;
            SumType = sumtype;
            xrllDate.Text = daterange;
            WoList = wolist;
            CustomerList = custlist;
            WsList = wslist;
            LineList = linelist;
            WeekNum = wknum;

            string _s1 = "",_s2="";
            Rtype = rtype;
            //if (rtype == "1")
            //{
            //    _s1 = "每日AQL審定表現摘要 -  成衣(主要/次要)暇疵和審定結果";
            //    _s2 = "Daily AQL Audit Perf. Summary - Gmts'( Major/Minor) Defects & Audit Result";

            //}
            //else if (rtype == "2")
            //{
            //    _s1 = "W" + WeekNum.ToString() + "周AQL審定表現摘要 -  成衣(主要/次要)暇疵和審定結果";
            //    _s2 = "Weekly AQL Audit Perf. Summary - Gmts'( Major/Minor) Defects & Audit Result";
            //}
            //else
            //{
            //    _s1 = "每月AQL審定表現摘要 -  成衣(主要/次要)暇疵和審定結果";
            //    _s2 = "Monthly AQL Audit Perf. Summary - Gmts'( Major/Minor) Defects & Audit Result";
            //}
            if (rtype == "1")
            {
                _s1 = "每日";
                _s2 = "Daily";

            }
            else if (rtype == "2")
            {
                _s1 = "W" + WeekNum.ToString() + "周";
                _s2 = "Weekly";
            }
            else
            {
                _s1 = "每月";
                _s2 = "Monthly";
            }
            xrLabel2.Text =string.Format(reportHelper.ReportInfo.ReportName_CN, _s1);
            xrLabel1.Text =string.Format(reportHelper.ReportInfo.ReportName_EN, _s2);
            PrepareData();
            
        }

       

        public void PrepareData()
        {
            //DataSet ds = SqlDataHelper.GetAuditQuality_AQL(Factory, SumType, StartDate, EndDate, Flag);
            DataSet ds = SqlDataHelper.GetAQLPerfDefectPointListReport(Factory, SumType, StartDate, EndDate, Flag, CustomerList, WoList, WsList, LineList);
          
            DbHeader = ds.Tables[0];
            DbDetail = ds.Tables[1];
            DbDetailSub = ds.Tables[2];
            DbHeaderDefectTop9= ds.Tables[3];
            DbTimes_Ws = ds.Tables[4];
            DbTimes_Cust  = ds.Tables[5];
            //DbDefCodeCountGroup = ds.Tables[6];
            //处理表头数据
            xrFactory.Text = DbHeader.AsEnumerable().Select(dr=>dr["Factory"]).FirstOrDefault().ToString();
            xrWKCount.Text= DbHeader.AsEnumerable().Select(dr=>dr["WsCount"]).FirstOrDefault().ToString();
            xrLines.Text=DbHeader.AsEnumerable().Select(dr=>dr["LineCount"]).FirstOrDefault().ToString();
            xrCustCount.Text= DbHeader.AsEnumerable().Select(dr=>dr["CustomerCount"]).FirstOrDefault().ToString();
            xrStyles.Text=DbHeader.AsEnumerable().Select(dr=>dr["StyleCount"]).FirstOrDefault().ToString();
            xrPOs.Text=DbHeader.AsEnumerable().Select(dr=>dr["CustomerPOCount"]).FirstOrDefault().ToString();
            xrChkTotal.Text = DbHeader.AsEnumerable().Select(dr => dr["ShipmentQty"]).FirstOrDefault().ToString();
            xrQty.Text=DbHeader.AsEnumerable().Select(dr=>dr["SampleQty"]).FirstOrDefault().ToString();
            xrFPYPer.Text=DbHeader.AsEnumerable().Select(dr=>dr["FPY"]).FirstOrDefault().ToString();
            xrlPrint.Text = DateTime.Now.ToString("yyyy/MM/dd");   								

            //處理表頭Top9疵點、
            for (int i = 0; i < DbHeaderDefectTop9.Rows.Count; i++) 
            {
                this.FindControl("TCCode0"+( i + 1), true).Text = DbHeaderDefectTop9.Rows[i]["DefectCode"].ToString();
                this.FindControl("TCDesc0" + (i + 1), true).Text = DbHeaderDefectTop9.Rows[i]["DefectNameCN"].ToString();
            }
           

            //处理Detail数据
            List<AQLPerfDefectPointListReportClass> tbDetail = DbDetail.AsEnumerable().Select(dr => new AQLPerfDefectPointListReportClass() 
            {
                Workshop = dr["Workshop"].ToString(),
                Line = dr["Line"].ToString(),
                Customer = dr["Customer"].ToString(),
                StyleType = dr["StyleType"].ToString(),
                Style = dr["Style"].ToString(),
                Week = dr["Week"].ToString(),
                DefectQty1 = dr["MarjorDefectQty1"].ToString()+ " / " + dr["MinorDefectQty1"].ToString(),
                DefectQty2 = dr["MarjorDefectQty2"].ToString()+ " / " + dr["MinorDefectQty2"].ToString(),
                DefectQty3 = dr["MarjorDefectQty3"].ToString()+ " / " + dr["MinorDefectQty3"].ToString(),
                DefectQty4 = dr["MarjorDefectQty4"].ToString()+ " / " + dr["MinorDefectQty4"].ToString(),
                DefectQty5 = dr["MarjorDefectQty5"].ToString()+ " /  " + dr["MinorDefectQty5"].ToString(),
                DefectQty6 = dr["MarjorDefectQty6"].ToString()+ " /  " + dr["MinorDefectQty6"].ToString(),
                DefectQty7 = dr["MarjorDefectQty7"].ToString()+ " / " + dr["MinorDefectQty7"].ToString(),
                DefectQty8 = dr["MarjorDefectQty8"].ToString()+ " / " + dr["MinorDefectQty8"].ToString(),
                DefectQty9 = dr["MarjorDefectQty9"].ToString()+ " / " + dr["MinorDefectQty9"].ToString(),
                OtherDefectQty = dr["OtherMarjorDefectQty"].ToString()+ " / " + dr["OtherMinorDefectQty"].ToString(),
                DefectTypeCount =int.Parse( dr["DefectTypeCount"].ToString()),
                TotalMarjorQty =int.Parse( dr["TotalMarjorQty"].ToString()),
                TotalMinorQty =int.Parse( dr["TotalMinorQty"].ToString()),
                ShipmentQty =int.Parse( dr["ShipmentQty"].ToString()),
                AQLLevel = dr["AQLLevel"].ToString(),
                SampleQty =int.Parse( dr["SampleQty"].ToString()),
                RejectMarjorQty =int.Parse( dr["RejectMarjorQty"].ToString()),
                RejectMinorQty =int.Parse( dr["RejectMinorQty"].ToString()),
                AuditTime = dr["AuditTime"].ToString(),
                AuditResult = dr["AuditResult"].ToString(),
                TotalMarjorPercent =decimal.Parse( dr["TotalMarjorPercent"].ToString()),
                TotalMinorPercent = decimal.Parse(dr["TotalMinorPercent"].ToString()),

            }).ToList();

            this.bsDetail.DataSource = tbDetail;

            //獲取子報表數據源
          
            _subRpt = new AQLPerfDefectPointListReport_Sub(ds);
            _subRpt.ReportHeaderObject.Visible = false;
            _subRpt.GetPageHeader.Visible = false;
            xrSubreport1.ReportSource = _subRpt;

            //DbSub = GetSubRptData(lstquality);

        }


        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            AQLPerfDefectPointListReportClass Curr = this.GetCurrentRow() as AQLPerfDefectPointListReportClass;

            if (Curr != null)
            {
                xrSubTtl.Text = "Ws Sub-total/組裝工場小計(" + Curr.Workshop + ") :";
                this.xrGroupType.Text = DbTimes_Ws.Rows.Count == 0 ? "0" : DbTimes_Ws.AsEnumerable().Where(dr => dr["WorkShop"].ToString() == Curr.Workshop).Select(dr => dr["DefectCodeTypeCount"]).FirstOrDefault().ToString();
            
            }
            //计算GroupFoot时，9个疵点的总计
            for (int i = 0; i <DbHeaderDefectTop9.Rows.Count; i++)
            {
                int MarjorDefectQty = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["MarjorDefectQty" + (i+1)].ToString())).Sum();
                int MinorDefectQty = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["MinorDefectQty" + (i+1)].ToString())).Sum();
                this.FindControl("xrGroupCode" + (i+1), true).Text = MarjorDefectQty.ToString() + " / " + MinorDefectQty.ToString();
            }

            //计算GroupFoot时，Other疵点的总计
            if (DbDetail.Rows.Count == 0) return;
            int MarjorDefectQtyOther = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["OtherMarjorDefectQty"].ToString())).Sum();
            int MinorDefectQtyOther = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["OtherMinorDefectQty"].ToString())).Sum();

            this.xrGroupCodeOther.Text = MarjorDefectQtyOther.ToString() + " / " + MinorDefectQtyOther.ToString();

            //计算GroupFoot时，疵点“%”
            int SampleQty = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["SampleQty"].ToString())).Sum();
            int RejMarjorQty = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["RejectMarjorQty"].ToString())).Sum();
            int RejMinorQty = DbDetail.AsEnumerable().Where(dr => dr["Workshop"].ToString() == Curr.Workshop).Select(dr => int.Parse(dr["RejectMinorQty"].ToString())).Sum();

            xrGroupPerMajor.Text = RejMarjorQty == 0 ? "0.00" : Math.Round(Convert.ToDouble((RejMarjorQty * 100.00) / (SampleQty == 0 ? 1 : SampleQty)), 2).ToString();

            xrGroupPerMin.Text =RejMinorQty==0?"0.00": Math.Round( Convert.ToDouble(RejMinorQty * 100.00 / (SampleQty == 0 ? 1 : SampleQty)), 2).ToString();

            
            

        }




    }
}
