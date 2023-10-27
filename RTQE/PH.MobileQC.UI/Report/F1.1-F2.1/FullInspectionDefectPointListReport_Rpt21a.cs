using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using PH.MobileQC.UI.UserControllibrary;
using System.Data;
using System.Linq;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.MobileQC.UI.Rpt21aa
{
    public partial class FullInspectionDefectPointListReport_Rpt21a : DevExpress.XtraReports.UI.XtraReport
    {
        List<FullInSpectionPerDefectPointsDetail> ListSource = new List<FullInSpectionPerDefectPointsDetail>();
        DataSet ds = new DataSet();
        public FullInspectionDefectPointListReport_Rpt21a(DatePeroidTypes AReportDatePeroidType, string AWeekOrMonth, string AFactory, DateTime ADateFrom, DateTime ADateTo,string Ws, string Line, string Cust)
        {
            InitializeComponent();
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            ReportHelper reportHelper = new ReportHelper("00000027");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
           
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;
            title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;
            int? aa = db.fn_GetFtybyWeek(ADateFrom);

            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                title_En.Text = "Daily " + title_En.Text;
                title_Cn.Text = "每日" +  title_Cn.Text;
                xrllDate.Text = "[Full Inspection Date / 審查日期 : " + ADateFrom.ToString("yyyy-MM-dd") + "]";
                xrRptText.Text =string.Format(reportHelper.ReportInfo.ReportCode,"1");
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                title_En.Text = "Wkly " + title_En.Text;
                title_Cn.Text = "每周" + title_Cn.Text;
                xrllDate.Text = string.Format("[Week/周 {0} (Full Inspection Date / 審查日期 : {1} ~ {2})]", 
                    db.fn_GetFtybyWeek(ADateFrom), ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "2");
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                title_En.Text = "Monthly " + title_En.Text;
                title_Cn.Text = "每月" + title_Cn.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (Full Inspection Date / 審查日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "3");
            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                title_En.Text = "Period Range of " + title_En.Text;
                title_Cn.Text = "週期範圍" + title_Cn.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (Full Inspection Date / 審查日期 : {0} ~ {1})]", ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "4");
            }

             
             xrFactory.Text = AFactory;


             string str = string.Format("exec Sp_FullInSpectionPerDefectPointsList '{0}', '{1}','{2}','{3}','{4}','{5}'", AFactory, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"), Ws.Replace(" ", ""), Line.Replace(" ", ""), Cust.Replace(" ", ""));
              ds = db.ExecuteDataSet(str, new DataSet(), "opts");
             DealHead(ds);
             ListSource = AList(ds);

             this.bindingSource1.DataSource = ListSource;
             FullInspectionDefectPointListReport_SubRpt21a SubRtp = new FullInspectionDefectPointListReport_SubRpt21a(SummaryAList(ds));
             xrSubreport1.ReportSource = SubRtp;

             if (ds.Tables[0].Rows.Count > 0)
             {
                 string StrTop1 = "Top 1 \r\n" + "({0})\r\n%";
                 xrtop1Name.Text = string.Format(StrTop1, ds.Tables[0].Rows[0]["DefectCode"].ToString());
             }

             if (ds.Tables[1].Rows.Count > 0)
             {

                 xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");
                 xrNoStyle.Text = ListSource.Select(dr => dr.StyleNo).Distinct().Count().ToString();
                 //xrFactory.Text = ListSource.Select(dr => dr.Factory).FirstOrDefault();
                 xrNoCustomer.Text = ListSource.Select(dr => dr.CustCode).Distinct().Count().ToString();
                 xrWs.Text = ListSource.Select(dr => dr.WorkShop).Distinct().Count().ToString();
                 xrNoLine.Text = ListSource.Select(dr => dr.Line).Distinct().Count().ToString();
                 xrPo.Text = ds.Tables[3].Rows[0]["CustomerPOTotal"].ToString();
                 xrDefectiveGmts.Text = ListSource.Select(dr => dr.DefectiveGarmentQty).Sum().ToString();
                 xrSampleGarments.Text = ListSource.Select(dr => dr.ProductQty).Sum().ToString();
             }
        }

        public void DealHead(DataSet ds)
        {

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                this.FindControl("TCCode0" + (i + 1).ToString(), true).Text = ds.Tables[0].Rows[i]["DefectCode"].ToString();
                this.FindControl("TCDesc0" + (i + 1).ToString(), true).Text = ds.Tables[0].Rows[i]["DefectNameEN"].ToString();
                this.FindControl("TCDescCN0" + (i + 1).ToString(), true).Text = ds.Tables[0].Rows[i]["DefectNameCN"].ToString();               
            }
        }

        public List<FullInSpectionPerDefectPointsDetail> AList(DataSet ds)
        {
            if (ds.Tables[1].Rows.Count == 0) return null;
            List<FullInSpectionPerDefectPointsDetail> AQLDefectList = ds.Tables[1].AsEnumerable().Select(dr => new FullInSpectionPerDefectPointsDetail()
            {
                Factory = dr["Factory"].ToString(),
                Line = dr["Line"].ToString(),
                CustCode = dr["CustCode"].ToString(),
                WorkShop = dr["WorkShop"].ToString(),
                LWO = dr["LWO"].ToString(),
                StyleNo = dr["StyleNo"].ToString(),
                QNQty = int.Parse(dr["QNQty"].ToString() == "" ? "0" : dr["QNQty"].ToString()),
                DefectTotal = int.Parse(dr["DefectTotal"].ToString() == "" ? "0" : dr["DefectTotal"].ToString()),
                DefectTypeCount = int.Parse(dr["DefectTypeCount"].ToString() == "" ? "0" : dr["DefectTypeCount"].ToString()),
                StyleType = dr["StyleType"].ToString(),
                DefectPer =decimal.Parse(dr["DefectPer"].ToString() == "" ? "0" : dr["DefectPer"].ToString()),
                DefectTop1Per = decimal.Parse(dr["DefectTop1Per"].ToString() == "" ? "0" : dr["DefectTop1Per"].ToString()),
                Year = int.Parse(dr["Year"].ToString() == "" ? "0" : dr["Year"].ToString()),
                //Month = int.Parse(dr["Month"].ToString() == "" ? "0" : dr["Month"].ToString()),
                Week = int.Parse(dr["Week"].ToString() == "" ? "0" : dr["Week"].ToString()),
                FullInspectionHeader = int.Parse(dr["FullInspectionHeader"].ToString() == "" ? "0" : dr["FullInspectionHeader"].ToString()),
                ProductQty = int.Parse(dr["ProductQty"].ToString() == "" ? "0" : dr["ProductQty"].ToString()),
                DefectiveGarmentQty = int.Parse(dr["DefectiveGarmentQty"].ToString() == "" ? "0" : dr["DefectiveGarmentQty"].ToString()),
                MarjorDefectQty1 = int.Parse(dr["MarjorDefectQty1"].ToString() == "" ? "0" : dr["MarjorDefectQty1"].ToString()),
                MarjorDefectQty2 = int.Parse(dr["MarjorDefectQty2"].ToString() == "" ? "0" : dr["MarjorDefectQty2"].ToString()),
                MarjorDefectQty3 = int.Parse(dr["MarjorDefectQty3"].ToString() == "" ? "0" : dr["MarjorDefectQty3"].ToString()),
                MarjorDefectQty4 = int.Parse(dr["MarjorDefectQty4"].ToString() == "" ? "0" : dr["MarjorDefectQty4"].ToString()),
                MarjorDefectQty5 = int.Parse(dr["MarjorDefectQty5"].ToString() == "" ? "0" : dr["MarjorDefectQty5"].ToString()),
                MarjorDefectQty6 = int.Parse(dr["MarjorDefectQty6"].ToString() == "" ? "0" : dr["MarjorDefectQty6"].ToString()),
                MarjorDefectQty7 = int.Parse(dr["MarjorDefectQty7"].ToString() == "" ? "0" : dr["MarjorDefectQty7"].ToString()),
                MarjorDefectQty8 = int.Parse(dr["MarjorDefectQty8"].ToString() == "" ? "0" : dr["MarjorDefectQty8"].ToString()),
                MarjorDefectQty9 = int.Parse(dr["MarjorDefectQty9"].ToString() == "" ? "0" : dr["MarjorDefectQty9"].ToString()),
                otherDefectQty = int.Parse(dr["otherDefectQty"].ToString() == "" ? "0" : dr["otherDefectQty"].ToString()),
                PerGrade = dr["PerGrade"].ToString(),            
            }).ToList();
            return AQLDefectList;

        }


        public List<FullInSpectionPerDefectPointsSummary> SummaryAList(DataSet ds)
        {
            if (ds.Tables[2].Rows.Count == 0) return null;
            List<FullInSpectionPerDefectPointsSummary> AQLDefectList = ds.Tables[2].AsEnumerable().Select(dr => new FullInSpectionPerDefectPointsSummary()
            {
                
                SubCustCodeOrWOrkShopType = int.Parse( dr["SubCustCodeOrWOrkShopType"].ToString()),
                SortType = int.Parse(dr["SortType"].ToString()),
                CustCodeOrWOrkShop = GetTypeName( int.Parse( dr["SubCustCodeOrWOrkShopType"].ToString()), dr["CustCodeOrWOrkShop"].ToString()),

                DefectTotal = int.Parse(dr["DefectTotal"].ToString() == "" ? "0" : dr["DefectTotal"].ToString()),
                DefectTop1Per = decimal.Parse(dr["DefectTop1Per"].ToString() == "" ? "0" : dr["DefectTop1Per"].ToString()),
                DefectiveGarmentQtyPer = decimal.Parse(dr["DefectiveGarmentQtyPer"].ToString() == "" ? "0" : dr["DefectiveGarmentQtyPer"].ToString()),              
                ProductQty = int.Parse(dr["ProductQty"].ToString() == "" ? "0" : dr["ProductQty"].ToString()),
                DefectiveGarmentQty = int.Parse(dr["DefectiveGarmentQty"].ToString() == "" ? "0" : dr["DefectiveGarmentQty"].ToString()),
                MarjorDefectQty1 = int.Parse(dr["MarjorDefectQty1"].ToString() == "" ? "0" : dr["MarjorDefectQty1"].ToString()),
                MarjorDefectQty2 = int.Parse(dr["MarjorDefectQty2"].ToString() == "" ? "0" : dr["MarjorDefectQty2"].ToString()),
                MarjorDefectQty3 = int.Parse(dr["MarjorDefectQty3"].ToString() == "" ? "0" : dr["MarjorDefectQty3"].ToString()),
                MarjorDefectQty4 = int.Parse(dr["MarjorDefectQty4"].ToString() == "" ? "0" : dr["MarjorDefectQty4"].ToString()),
                MarjorDefectQty5 = int.Parse(dr["MarjorDefectQty5"].ToString() == "" ? "0" : dr["MarjorDefectQty5"].ToString()),
                MarjorDefectQty6 = int.Parse(dr["MarjorDefectQty6"].ToString() == "" ? "0" : dr["MarjorDefectQty6"].ToString()),
                MarjorDefectQty7 = int.Parse(dr["MarjorDefectQty7"].ToString() == "" ? "0" : dr["MarjorDefectQty7"].ToString()),
                MarjorDefectQty8 = int.Parse(dr["MarjorDefectQty8"].ToString() == "" ? "0" : dr["MarjorDefectQty8"].ToString()),
                MarjorDefectQty9 = int.Parse(dr["MarjorDefectQty9"].ToString() == "" ? "0" : dr["MarjorDefectQty9"].ToString()),
                otherDefectQty = int.Parse(dr["otherDefectQty"].ToString() == "" ? "0" : dr["otherDefectQty"].ToString()),
                PerGrade = dr["PerGrade"].ToString(),
            }).ToList();
            return AQLDefectList;

        }


        public string GetTypeName(int AType,string Name) 
        {
            string  ResultName = "";
            if (AType == 1) 
            {
                ResultName = "Stitching Ws Sub-total / 車縫工場小計 ({0})";
                return string.Format(ResultName, Name);            
            }
            else if (AType == 2)
            {
                ResultName = "Stitching Ws Total / 車縫工場總計";
                return ResultName;
            }
            else if (AType == 3)
            {
                ResultName = "Customer Sub-total / 客戶小計 ({0})";
                return string.Format(ResultName, Name);
            }
            else 
            {
                return "Customer Total / 客戶總計";
            }
        
        }

        //private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    if (ds.Tables[1].Rows.Count == 0) return ;
        //    string GetWs = this.GetCurrentColumnValue("WorkShop").ToString();
        //    string GetWeeK = this.GetCurrentColumnValue("Week").ToString();
        //    string GetWsNameTotal ="Ws Sub-total / 組裝工場小計 ({0})";
        //    xrSubTotal.Text = string.Format(GetWsNameTotal, GetWs);
        //    int Top1Qty = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty1).Sum();
        //    int DefectiveGarmentQty = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.DefectiveGarmentQty).Sum();
        //    int SampleGmts = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.ProductQty).Sum();
        //    xrSubTotal1.Text = Top1Qty.ToString();
        //    xrSubTotal2.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty2).Sum().ToString();
        //    xrSubTotal3.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty3).Sum().ToString();
        //    xrSubTotal4.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty4).Sum().ToString();
        //    xrSubTotal5.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty5).Sum().ToString();
        //    xrSubTotal6.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty6).Sum().ToString();
        //    xrSubTotal7.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty7).Sum().ToString();
        //    xrSubTotal8.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty8).Sum().ToString();
        //    xrSubTotal9.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty9).Sum().ToString();
        //    xrSubTotalOther.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.otherDefectQty).Sum().ToString();
        //    xrSubDefectTotal.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.DefectTotal).Sum().ToString();
        //    xrSubTop1PerTotal.Text= (SampleGmts + Top1Qty)==0?"0": Math.Round((Top1Qty *1.00 / (SampleGmts + Top1Qty)),4).ToString("P");
        //    xrSubSampleGmtsTotal.Text = DefectiveGarmentQty.ToString();
        //    double  SubDefectGmtPer =  (SampleGmts + DefectiveGarmentQty) ==0 ? double.Parse( "0") : Math.Round((DefectiveGarmentQty * 1.00 / (SampleGmts + DefectiveGarmentQty)), 4);
        //    xrSubDefectGmtPerTotal.Text = (SampleGmts + DefectiveGarmentQty) == 0 ? "0" : Math.Round((DefectiveGarmentQty * 1.00 / (SampleGmts + DefectiveGarmentQty)), 5).ToString("P");
        //    xrSubSampleGmtsTotal.Text = SampleGmts.ToString();
        //    //xrSubTop1PerTotal.Text = 
        //    xrSubPerGradeTotal.Text = GetGrade(SubDefectGmtPer);
        //}

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (ds.Tables[1].Rows.Count == 0) return;
            string GetWs = this.GetCurrentColumnValue("WorkShop").ToString();
            string GetWeeK = this.GetCurrentColumnValue("Week").ToString();
            string GetWsNameTotal = "Stitching Ws Sub-total / 車縫工場小計 ({0})";
            xrSubTotal.Text = string.Format(GetWsNameTotal, GetWs);
            int Top1Qty = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty1).Sum();
            int DefectiveGarmentQty = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.DefectiveGarmentQty).Sum();
            int SampleGmts = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.ProductQty).Sum();
            xrSubTotal1.Text = Top1Qty.ToString();
            xrSubTotal2.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty2).Sum().ToString();
            xrSubTotal3.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty3).Sum().ToString();
            xrSubTotal4.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty4).Sum().ToString();
            xrSubTotal5.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty5).Sum().ToString();
            xrSubTotal6.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty6).Sum().ToString();
            xrSubTotal7.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty7).Sum().ToString();
            xrSubTotal8.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty8).Sum().ToString();
            xrSubTotal9.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.MarjorDefectQty9).Sum().ToString();
            xrSubTotalOther.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.otherDefectQty).Sum().ToString();
            xrSubDefectTotal.Text = ListSource.Where(dr => dr.WorkShop == GetWs  ).Select(dr => dr.DefectTotal).Sum().ToString();            
            xrSubTop1PerTotal.Text = (SampleGmts + Top1Qty) == 0 ? "0" : Math.Round((Top1Qty * 1.00 / (SampleGmts + Top1Qty)), 4).ToString("P");

            xrSubDefectGmtTotal.Text = ListSource.Where(dr => dr.WorkShop == GetWs).Select(dr => dr.DefectiveGarmentQty).Sum().ToString();
            xrSubSampleGmtsTotal.Text = DefectiveGarmentQty.ToString();
            double SubDefectGmtPer = (SampleGmts + DefectiveGarmentQty) == 0 ? double.Parse("0") : Math.Round((DefectiveGarmentQty * 1.00 / (SampleGmts + DefectiveGarmentQty)), 4);
            xrSubDefectGmtPerTotal.Text = (SampleGmts + DefectiveGarmentQty) == 0 ? "0" : Math.Round((DefectiveGarmentQty * 1.00 / (SampleGmts + DefectiveGarmentQty)), 5).ToString("P");
            xrSubSampleGmtsTotal.Text = SampleGmts.ToString();
            //xrSubTop1PerTotal.Text = 
            xrSubPerGradeTotal.Text = GetGrade(SubDefectGmtPer);

            this.xrSubPerGradeTotal.ForeColor = (xrSubPerGradeTotal.Text == "F" || xrSubPerGradeTotal.Text == "U") ? System.Drawing.Color.Red : System.Drawing.SystemColors.ControlText;
        }

        public string GetGrade(double DefectGmtPer) 
        {
            if (DefectGmtPer < 0.01) 
            {
                return "A";
            }
            else if (0.01 <= DefectGmtPer && DefectGmtPer < 0.02)
            {
                return "B";
            }
            else if (0.02 <= DefectGmtPer && DefectGmtPer < 0.03) 
            {
                return "C";
            }
            else if (0.03 <= DefectGmtPer && DefectGmtPer <= 0.05)
            {
                return "F";
            }
            else 
            {
                return "U";
            }
        }

        private void xrTableRow8_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
             //处理Result(Grade)栏位結果字体颜色
            if (this.GetCurrentColumnValue("PerGrade") != null)
            {
                string CellResult = this.GetCurrentColumnValue("PerGrade").ToString();

                this.xrTableCell41.ForeColor = (CellResult == "F" || CellResult == "U") ? System.Drawing.Color.Red : System.Drawing.SystemColors.ControlText;
            }
        }

        private void xrTableRow9_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //处理Result(Grade)栏位結果字体颜色
            //if (this.GetCurrentColumnValue("PerGrade") != null)
            //{
            //    string CellResult = this.GetCurrentColumnValue("PerGrade").ToString();

            //    this.xrSubPerGradeTotal.ForeColor = (CellResult == "F" || CellResult == "U") ? System.Drawing.Color.Red : System.Drawing.SystemColors.ControlText;
            //}
        }


    }
}
