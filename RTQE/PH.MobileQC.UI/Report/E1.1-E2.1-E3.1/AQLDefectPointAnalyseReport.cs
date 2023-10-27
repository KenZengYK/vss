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
using PH.Platform.BO;
using PH.MobileQC.UI.RPT.AQL;
using PH.MobileQC.UI.UserControllibrary;
using System.Globalization;

namespace PH.MobileQC.UI.AQL
{
    public partial class AQLDefectPointAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        //ReportHelper reportHelper = new ReportHelper("00000024");
        DateTime _DateFrom;
        DateTime _DateTo;
        public string AIsChooseTop3 = "";
        List<AQLDefectPointAnalyseReportClass> ListSource = new List<AQLDefectPointAnalyseReportClass>();
        public AQLDefectPointAnalyseReport(DatePeroidTypes AReportDatePeroidType, string AFactory, string AWeekOrMonth, DateTime ADateFrom, DateTime ADateTo, string AChechComletedIs, string IsChooseTop3)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000024");
            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            //That time + last 2 Audit Result Rcds shown rej./re-acc. (if any)
            //當時刻 + 上兩回審定結果紀錄顯示拒收/重新接受 (如有)
           
            //右上款
            //1) Filtered
            //2) Non Filter
            //xrLabel11.Visible = IsChooseTop3 == "Y";
            xrLabel11.Text = IsChooseTop3 == "Y" ? "Filtered" : "Non Filter";


            AIsChooseTop3 = IsChooseTop3;
            _DateFrom = ADateFrom;
            _DateTo = ADateTo;

            title_En.Text = reportHelper.ReportInfo.ReportName_EN;
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;
            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                DateTimeFormatInfo formatInfo = DateTimeFormatInfo.CurrentInfo;
                //this.Week = formatInfo.Calendar.GetWeekOfYear(txtDateFrom.DateTime, formatInfo.CalendarWeekRule, formatInfo.FirstDayOfWeek);

                string WeekBy = db.fn_GetFtybyWeek(ADateFrom).ToString();

                title_En.Text = "Daily " + title_En.Text;
                xrllDate.Text = "[Audit Time | 審定時刻 : " + ADateFrom.ToString("yyyy-MM-dd") +  " ( " + ADateFrom.DayOfWeek.ToString().Substring(0,3) + " )" + " | Wk" + WeekBy + "]";
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "1");

                xrLastDate.Text = ADateFrom.ToString("MM-dd");


            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                title_En.Text = "Wkly " + title_En.Text;
                xrllDate.Text = string.Format("[Week/周 {0} Audit Time | 審定時刻 : {1} ~ {2})]",
                    db.fn_GetFtybyWeek(ADateFrom),//AWeekOrMonth, 
                    ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "2");


                xrLastDate.Text = "Wk" + db.fn_GetFtybyWeek(ADateFrom);

            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                title_En.Text = "Mthly " + title_En.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (Audit Time | 審定時刻 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "3");

                xrLastDate.Text = "Mth" + AWeekOrMonth;

            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                title_En.Text = "Period Range of " + title_En.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (Audit Time | 審定時刻 : {0} ~ {1})]", ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
                xrRptText.Text = string.Format(reportHelper.ReportInfo.ReportCode, "4");
            }

            string str = string.Format("exec sp_AQLDefectPointAnalyseReport1 '{0}', '{1}', '{2}', '{3}', '{4}' ",
                AFactory, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"), AChechComletedIs, IsChooseTop3);
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");
            DealHead(ds);

            ListSource = AList(ds);

            AQLDefectPointAnalyseReport_Sub SubRpt = new AQLDefectPointAnalyseReport_Sub(AListSub(ds));
            this.xrSubreport1.ReportSource = SubRpt;

            bindingSource1.DataSource = ListSource;

            xrFactory.Text = AFactory;
            //xrllDate.Text = "[AQL Audit Date / 審定日期 : " + ADateFrom.ToString("yyyy-MM-dd") + " ~ " + ADateTo.ToString("yyyy-MM-dd") + "]";
            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");

            if (ListSource.Count == 0) return;
            xrNoCustomer.Text = ListSource.Select(p => p.Customer).Distinct().Count().ToString();
            xrNoStyle.Text = ListSource.Select(p => p.Style).Distinct().Count().ToString();
            xrNoLine.Text = ListSource.Select(p => p.dLine).Distinct().Count().ToString();
            int MissQN = Convert.ToInt32(ds.Tables[6].Rows[0]["AllLine"].ToString());

            xrMissLine.Text = MissQN > 0 ? MissQN.ToString() : "0";
            //xrPNDQty.Text = ListSource.Select(p => p.ShipmentQty).Distinct().Sum().ToString();
            //xrSampleGarments.Text = ListSource.Select(p => p.SampleQty).Distinct().Sum().ToString();

            var ShipmentQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { ShipmentQty = a.Average(m => m.ShipmentQty) }).ToList();
            //xrSampleGarments.Text = ShipmentQtyList.Select(p => p.SampleQty).Sum().ToString();
            xrTableCell24.Text = ShipmentQtyList.Select(p => p.ShipmentQty).Sum().ToString();

            var PDNShptQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { PDNShptQty = a.Average(m => m.PDNShptQty) }).ToList();
            xrPNDQty.Text = xrTableCell19.Text = PDNShptQtyList.Select(p => p.PDNShptQty).Sum().ToString();


            var dQNQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { dQNQty = a.Max(m => m.dQNQty) }).ToList();
            xrSumReadyForAudit.Text = dQNQtyList.Select(p => p.dQNQty).Sum().ToString();



            var CountLineList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { CountLine = a.Average(m => m.CountLine) }).ToList();
            xrTableCell11.Text = AIsChooseTop3 == "Y" ? "" : CountLineList.Select(p => p.CountLine).Sum().ToString();

            var ReadyAuditQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { ReadyAuditQty = a.Average(m => m.ReadyAuditQty) }).ToList();
            xrTableCell26.Text = ReadyAuditQtyList.Select(p => p.ReadyAuditQty).Sum().ToString();

            var SampleQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { SampleQty = a.Average(m => m.SampleQty) }).ToList();
            xrTableCell28.Text = SampleQtyList.Select(p => p.SampleQty).Sum().ToString();


            var SampleMarjorRejQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { SampleMarjorRejQty = a.Average(m => m.SampleMarjorRejQty) }).ToList();
            xrSumMaj.Text = AIsChooseTop3 == "Y" ? "" : SampleMarjorRejQtyList.Select(p => p.SampleMarjorRejQty).Sum().ToString();

            var SampleMinorRejQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { SampleMinorRejQty = a.Average(m => m.SampleMinorRejQty) }).ToList();
            xrSumMin.Text = AIsChooseTop3 == "Y" ? "" : SampleMinorRejQtyList.Select(p => p.SampleMinorRejQty).Sum().ToString();


            //title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;

            if (AChechComletedIs == "Incompleted") { title_En.Text = title_En.Text + " - Incomplete"; }
            else if (AChechComletedIs == "Completed") { title_En.Text = title_En.Text + " - Completed"; }

            //xrFPYByLot.Text = Convert.ToDouble(ds.Tables[2].Rows[0]["FPY"]).ToString("P");
            //xrFPYByPcs.Text = Convert.ToDouble(ds.Tables[3].Rows[0]["FPYByPcs"]).ToString("P");



            xrFPYByLot.Text = ds.Tables[5].Rows[0]["FpyPerByLot"].ToString();
            xrFPYByPcs.Text = ds.Tables[5].Rows[0]["FpyPerByPcs"].ToString();
            xrSampleGarments.Text = ds.Tables[5].Rows[0]["SampleSizeTtl"].ToString();
            xrDefGmtsTtl.Text = ds.Tables[5].Rows[0]["TotalDefectiveGmts"].ToString();
            xrWorkShop.Text = ds.Tables[5].Rows[0]["WorkShopCount"].ToString();

            xrLastOutPut.Text = ds.Tables[6].Rows[0]["LastdReadyAuditQty"].ToString();

            xrLastQty.Text = ds.Tables[6].Rows[0]["LastdSampleQty"].ToString();
            xrLastLvl.Text = ds.Tables[6].Rows[0]["lastAuditLevel"].ToString();
            xrLastLimit.Text = ds.Tables[6].Rows[0]["lastAQLLevel"].ToString();
            xrLastMaj.Text = ds.Tables[6].Rows[0]["LastdSampleMarjorRejQty"].ToString();
            xrLastMin.Text = ds.Tables[6].Rows[0]["LastdSampleMinorRejQty"].ToString();




        }

        //public AQLDefectPointAnalyseReport(string AFactory, DateTime ADateFrom, DateTime ADateTo, string AChechComletedIs)
        //{
        //    InitializeComponent();
        //    string str = string.Format("exec sp_AQLDefectPointAnalyseReport '{0}', '{1}','{2}','{3}'", AFactory, ADateFrom, ADateTo, AChechComletedIs);
        //    DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");
        //    DealHead(ds);

        //    List<AQLDefectPointAnalyseReportClass> ListSource = AList(ds);

        //    AQLDefectPointAnalyseReport_Sub SubRpt = new AQLDefectPointAnalyseReport_Sub(AListSub(ds));
        //    this.xrSubreport1.ReportSource = SubRpt;

        //    bindingSource1.DataSource = ListSource;
        //    xrFactory.Text = AFactory;
        //    xrllDate.Text ="[AQL Audit Date / 審定日期 : " +ADateFrom.ToString("yyyy-MM-dd") + " ~ " + ADateTo.ToString("yyyy-MM-dd")+"]";
        //    xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");


        //    xrNoCustomer.Text = ListSource.Select(p => p.Customer).Distinct().Count().ToString();
        //    xrNoStyle.Text = ListSource.Select(p => p.Style).Distinct().Count().ToString();
        //    xrNoLine.Text = ListSource.Select(p => p.dLine).Distinct().Count().ToString();
        //    //xrPNDQty.Text = ListSource.Select(p => p.ShipmentQty).Distinct().Sum().ToString();
        //    //xrSampleGarments.Text = ListSource.Select(p => p.SampleQty).Distinct().Sum().ToString();

        //    var ShipmentQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO } ).Select(a => new { SampleQty = a.Average(m => m.SampleQty) }).ToList();
        //    xrSampleGarments.Text = ShipmentQtyList.Select(p => p.SampleQty).Sum().ToString();
        //    xrSumSampleGarments.Text = xrSampleGarments.Text;

        //    var xrPNDQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO,p.WO} ).Select(a => new { ShipmentQty = a.Average(m => m.ShipmentQty) }).ToList();
        //    xrPNDQty.Text = xrPNDQtyList.Select(p => p.ShipmentQty).Sum().ToString();


        //    var ReadyAuditQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { ReadyAuditQty = a.Average(m => m.ReadyAuditQty) }).ToList();
        //    xrSumReadyForAudit.Text = ReadyAuditQtyList.Select(p => p.ReadyAuditQty).Sum().ToString();

        //    var SampleMarjorRejQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { SampleMarjorRejQty = a.Average(m => m.SampleMarjorRejQty) }).ToList();
        //    xrSumMaj.Text = SampleMarjorRejQtyList.Select(p => p.SampleMarjorRejQty).Sum().ToString();

        //    var SampleMinorRejQtyList = ListSource.GroupBy(p => new { p.Style, p.CustomerPO, p.WO }).Select(a => new { SampleMinorRejQty = a.Average(m => m.SampleMinorRejQty) }).ToList();
        //    xrSumMin.Text = SampleMinorRejQtyList.Select(p => p.SampleMinorRejQty).Sum().ToString(); 

        //    xrVerName.Text = reportHelper.ReportInfo.VerName;
        //    xrVerText.Text = reportHelper.ReportInfo.VerContext;
        //    xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
        //    xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
        //    xrRptText.Text = reportHelper.ReportInfo.ReportCode;
        //    title_En.Text = reportHelper.ReportInfo.ReportName_EN;
        //    //title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;

        //    if (AChechComletedIs == "Incompleted") { title_En.Text = title_En.Text + " - Incomplete"; }
        //    else if (AChechComletedIs == "Completed") { title_En.Text = title_En.Text + " - Completed"; }

        //    xrFPYByLot.Text = Convert.ToDouble(ds.Tables[2].Rows[0]["FPY"]).ToString("P");
        //    xrFPYByPcs.Text = Convert.ToDouble(ds.Tables[3].Rows[0]["FPYByPcs"]).ToString("P");

        //}

        public void DealHead(DataSet ds)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                this.FindControl("TCCode0" + (i + 1), true).Text = ds.Tables[0].Rows[i]["DefectCode"].ToString();
                this.FindControl("TCDesc0" + (i + 1), true).Text = ds.Tables[0].Rows[i]["DefectNameCN"].ToString();
            }
        }

        public List<AQLDefectPointAnalyseReportClass> AList(DataSet ds)
        {
            List<AQLDefectPointAnalyseReportClass> AQLDefectList = ds.Tables[1].AsEnumerable().Select(dr => new AQLDefectPointAnalyseReportClass()
            {
                Customer = dr["Customer"].ToString(),
                Year = int.Parse(dr["Year"].ToString()),
                Month = int.Parse(dr["Month"].ToString()),
                Week = int.Parse(dr["Week"].ToString()),
                StyleType = dr["StyleType"].ToString(),
                Style = dr["Style"].ToString(),
                CustomerPO = dr["CustomerPO"].ToString(),
                WO = dr["WO"].ToString(),
                ShipmentQty = int.Parse(dr["ShipmentQty"].ToString()),
                AQLLevel = dr["AQLLevel"].ToString(),
                SampleRatio = decimal.Parse(dr["SampleRatio"].ToString()),
                MarjorDefectQty1 = int.Parse(dr["MarjorDefectQty1"].ToString()),
                MinorDefectQty1 = int.Parse(dr["MinorDefectQty1"].ToString()),
                MarjorDefectQty2 = int.Parse(dr["MarjorDefectQty2"].ToString()),
                MinorDefectQty2 = int.Parse(dr["MinorDefectQty2"].ToString()),
                MarjorDefectQty3 = int.Parse(dr["MarjorDefectQty3"].ToString()),
                MinorDefectQty3 = int.Parse(dr["MinorDefectQty3"].ToString()),
                MarjorDefectQty4 = int.Parse(dr["MarjorDefectQty4"].ToString()),
                MinorDefectQty4 = int.Parse(dr["MinorDefectQty4"].ToString()),
                MarjorDefectQty5 = int.Parse(dr["MarjorDefectQty5"].ToString()),
                MinorDefectQty5 = int.Parse(dr["MinorDefectQty5"].ToString()),
                //MarjorDefectQty6 = int.Parse( dr["MarjorDefectQty6"].ToString()),  MinorDefectQty6 = int.Parse( dr["MinorDefectQty6"].ToString()),
                //MarjorDefectQty7 = int.Parse( dr["MarjorDefectQty7"].ToString()),  MinorDefectQty7 = int.Parse( dr["MinorDefectQty7"].ToString()),
                //MarjorDefectQty8 = int.Parse( dr["MarjorDefectQty8"].ToString()),  MinorDefectQty8 = int.Parse( dr["MinorDefectQty8"].ToString()),
                MarjorDefectQtyOther = int.Parse(dr["MarjorDefectQtyOther"].ToString()),
                MinorDefectQtyOther = int.Parse(dr["MinorDefectQtyOther"].ToString()),
                DefectTypeQty = int.Parse(dr["DefectTypeQty"].ToString()),
                MarjorDefectQty = int.Parse(dr["MarjorDefectQty"].ToString()),
                MinorDefectQty = int.Parse(dr["MinorDefectQty"].ToString()),
                PerMarjorDefect = decimal.Parse(dr["PerMarjorDefect"].ToString()),
                PerMinorDefect = decimal.Parse(dr["PerMinorDefect"].ToString()),
                CountLine = int.Parse(dr["CountLine"].ToString()),
                ReadyAuditQty = int.Parse(dr["ReadyAuditQty"].ToString()),
                SampleQty = int.Parse(dr["SampleQty"].ToString()),
                ExamDays = int.Parse(dr["ExamDays"].ToString()),
                CountLot = int.Parse(dr["CountLot"].ToString()),
                SampleMarjorRejQty = int.Parse(dr["SampleMarjorRejQty"].ToString()),
                SampleMinorRejQty = int.Parse(dr["SampleMinorRejQty"].ToString()),
                ExamTimes = ConvertExamTimes(int.Parse(dr["ExamTimes"].ToString())),
                ExamResult = dr["ExamResult"].ToString(),
                IsCompleted = dr["IsCompleted"].ToString(),
                dLine = dr["dLine"].ToString(),
                dAuditDate = Convert.ToDateTime(dr["dAuditDate"].ToString()).ToString("MM-dd"),
                dQN = dr["dQN"].ToString(),
                dQNQty = int.Parse(dr["dQNQty"].ToString()),
                dReadyAuditQty = int.Parse(dr["dReadyAuditQty"].ToString()),
                dSampleQty = int.Parse(dr["dSampleQty"].ToString()),
                dLotSeq = int.Parse(dr["dLotSeq"].ToString()),
                dSampleMarjorRejQty = int.Parse(dr["dSampleMarjorRejQty"].ToString()),
                dSampleMinorRejQty = int.Parse(dr["dSampleMinorRejQty"].ToString()),
                dExamTimes = ConvertExamTimes(int.Parse(dr["dExamTimes"].ToString())),
                dExamResult = dr["dExamResult"].ToString(),

                PDNShptQty = int.Parse(dr["PDNShptQty"].ToString()),
                Color = dr["Color"].ToString(),
                ColorCount = dr["ColorCount"].ToString(),
                AuditLevel = dr["AuditLevel"].ToString(),
                IsRed = dr["IsRed"].ToString(),

                Seq = dr["ChooseSeq"].ToString(),






            }).ToList();
            return AQLDefectList;

        }

        public List<AQLDefectPointAnalyseReportClass_Sub> AListSub(DataSet ds)
        {
            List<AQLDefectPointAnalyseReportClass_Sub> AQLDefectList = ds.Tables[4].AsEnumerable().Select(dr => new AQLDefectPointAnalyseReportClass_Sub()
            {
                //Customer = "Customer Sub-total / 客戶小計（" + dr["Customer"].ToString() + " ) : ",
                Customer = dr["Customer"].ToString(),
                //Year = int.Parse(dr["Year"].ToString()),
                //Month = int.Parse(dr["Month"].ToString()),
                //Week = int.Parse(dr["Week"].ToString()),
                //StyleType = dr["StyleType"].ToString(),
                //Style = dr["Style"].ToString(),
                //CustomerPO = dr["CustomerPO"].ToString(),
                //WO = dr["WO"].ToString(),
                //ShipmentQty = int.Parse(dr["ShipmentQty"].ToString()),
                //AQLLevel = dr["AQLLevel"].ToString(),
                //SampleRatio = decimal.Parse(dr["SampleRatio"].ToString()),
                ShipmentQty = int.Parse(dr["ShipmentQty"].ToString()),
                PDNShptQty = int.Parse(dr["PDNShptQty"].ToString()),


                MarjorDefectQty1 = int.Parse(dr["TotalMarjorDefectQty1"].ToString()),
                MinorDefectQty1 = int.Parse(dr["TotalMinorDefectQty1"].ToString()),
                MarjorDefectQty2 = int.Parse(dr["TotalMarjorDefectQty2"].ToString()),
                MinorDefectQty2 = int.Parse(dr["TotalMinorDefectQty2"].ToString()),
                MarjorDefectQty3 = int.Parse(dr["TotalMarjorDefectQty3"].ToString()),
                MinorDefectQty3 = int.Parse(dr["TotalMinorDefectQty3"].ToString()),
                MarjorDefectQty4 = int.Parse(dr["TotalMarjorDefectQty4"].ToString()),
                MinorDefectQty4 = int.Parse(dr["TotalMinorDefectQty4"].ToString()),
                MarjorDefectQty5 = int.Parse(dr["TotalMarjorDefectQty5"].ToString()),
                MinorDefectQty5 = int.Parse(dr["TotalMinorDefectQty5"].ToString()),
                //MarjorDefectQty6 = int.Parse( dr["MarjorDefectQty6"].ToString()),  MinorDefectQty6 = int.Parse( dr["MinorDefectQty6"].ToString()),
                //MarjorDefectQty7 = int.Parse( dr["MarjorDefectQty7"].ToString()),  MinorDefectQty7 = int.Parse( dr["MinorDefectQty7"].ToString()),
                //MarjorDefectQty8 = int.Parse( dr["MarjorDefectQty8"].ToString()),  MinorDefectQty8 = int.Parse( dr["MinorDefectQty8"].ToString()),
                MarjorDefectQtyOther = int.Parse(dr["TotalMarjorDefectQtyOther"].ToString()),
                MinorDefectQtyOther = int.Parse(dr["TotalMinorDefectQtyOther"].ToString()),
                DefectTypeQty = int.Parse(dr["TotalDefectTypeQty"].ToString()),
                MarjorDefectQty = int.Parse(dr["TotalMarjorDefectQty"].ToString()),
                MinorDefectQty = int.Parse(dr["MinorDefectQty"].ToString()),
                PerMarjorDefect = decimal.Parse(dr["PerMarjorDefect"].ToString()),
                PerMinorDefect = decimal.Parse(dr["PerMinorDefect"].ToString()),
                CountLine = int.Parse(dr["TotaldLine"].ToString()),
                ReadyAuditQty = int.Parse(dr["TotalReadyAuditQty"].ToString()),
                SampleQty = int.Parse(dr["TotalSampleQty"].ToString()),
                //ExamDays = int.Parse(dr["ExamDays"].ToString()),
                //CountLot = int.Parse(dr["CountLot"].ToString()),
                SampleMarjorRejQty = int.Parse(dr["TotalSampleMarjorRejQty"].ToString()),
                SampleMinorRejQty = int.Parse(dr["TotalSampleMinorRejQty"].ToString()),
                //ExamTimes = ConvertExamTimes(int.Parse(dr["ExamTimes"].ToString())),
                //ExamResult = dr["ExamResult"].ToString(),
                //IsCompleted = dr["IsCompleted"].ToString(),
                //dLine = dr["dLine"].ToString(),
                //dAuditDate = Convert.ToDateTime(dr["dAuditDate"].ToString()).ToString("dd-MM"),
                //dQN = dr["dQN"].ToString(),
                //dQNQty = int.Parse(dr["dQNQty"].ToString()),
                dReadyAuditQty = int.Parse(dr["TotaldReadyAuditQty"].ToString()),
                dSampleQty = int.Parse(dr["TotaldSampleQty"].ToString()),
                //dLotSeq = int.Parse(dr["dLotSeq"].ToString()),
                dSampleMarjorRejQty = int.Parse(dr["TotaldSampleMarjorRejQty"].ToString()),
                dSampleMinorRejQty = int.Parse(dr["TotaldSampleMinorRejQty"].ToString()),
                //dExamTimes = ConvertExamTimes(int.Parse(dr["dExamTimes"].ToString())),
                //dExamResult = dr["dExamResult"].ToString(),
            }).ToList();
            return AQLDefectList;

        }


        public string ConvertExamTimes(int AExamTime)
        {
            if (AExamTime == 1)
                return "1st";
            else if (AExamTime == 2)
                return "2nd";
            else if (AExamTime == 3)
                return "3rd";
            return "";
        }


        string StyleFirst = "", StyleSecomd = "";
        string CustomerPOFirst = "", CustomerPOSecomd = "";
        string WOFirst = "", WOSecomd = "";
        private void xrTableRow7_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if ((CustomerPOFirst != "" || CustomerPOSecomd != "") )
            if (ListSource.Count == 0) return;
            if ((WOFirst != "" || WOSecomd != ""))
            {
                CustomerPOSecomd = CustomerPOFirst;
                CustomerPOFirst = this.GetCurrentColumnValue("CustomerPO").ToString();

                WOSecomd = WOFirst;
                WOFirst = this.GetCurrentColumnValue("WO").ToString();

                StyleSecomd = StyleFirst;
                StyleFirst = this.GetCurrentColumnValue("Style").ToString();

                if (CustomerPOFirst == CustomerPOSecomd && StyleFirst == StyleSecomd && WOSecomd == WOFirst)
                {
                    this.xrWeek.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.xrCustomer.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrStyleType.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrCustomerPO.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrShipmentQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrSampleRatio.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrDefectQty1Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty2Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty3Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty4Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty5Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty7Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrDefectTypeQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrMarjorDefectQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrMinorDefectQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrPerMarjorDefect.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrPerMinorDefect.Borders = DevExpress.XtraPrinting.BorderSide.Right;


                    this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrdQN.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell110.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrTableCell76.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell33.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell87.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell92.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell32.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell97.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    //this.xrTableCell4.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    //this.xrdQN.Borders = DevExpress.XtraPrinting.BorderSide.Right;


                    //((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));

                    //this.xrCustomer.Text = "";
                    this.xrWeek.Text = "";
                    this.xrStyleType.Text = "";
                    this.xrCustomerPO.Text = "";
                    this.xrShipmentQty.Text = "";
                    this.xrSampleRatio.Text = "";

                    this.xrDefectQty1Show.Text = "";
                    this.xrDefectQty2Show.Text = "";
                    this.xrDefectQty3Show.Text = "";
                    this.xrDefectQty4Show.Text = "";
                    this.xrDefectQty5Show.Text = "";
                    this.xrDefectQty7Show.Text = "";

                    this.xrDefectTypeQty.Text = "";
                    this.xrMarjorDefectQty.Text = "";
                    this.xrMinorDefectQty.Text = "";
                    this.xrPerMarjorDefect.Text = "";
                    this.xrPerMinorDefect.Text = "";

                    this.xrTableCell9.Text = "";

                    this.xrdQN.Text = "";
                    this.xrTableCell110.Text = "";
                    this.xrTableCell76.Text = "";
                    this.xrTableCell33.Text = "";
                    this.xrTableCell87.Text = "";
                    this.xrTableCell92.Text = "";
                    this.xrTableCell32.Text = "";
                    this.xrTableCell97.Text = "";


                    //this.xrTableCell4.Text = "";

                    //this.xrdQN.Text = "";
                    //this.xrDefectQty8Show
                }

                else
                {

                    this.xrWeek.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.xrCustomer.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrStyleType.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrCustomerPO.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrShipmentQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrSampleRatio.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrDefectQty1Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty2Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty3Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty4Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty5Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty7Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    //this.xrDefectQty8Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.xrDefectQtyOtherShow.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrDefectTypeQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrMarjorDefectQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrMinorDefectQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrPerMarjorDefect.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrPerMinorDefect.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrTableCell9.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrdQN.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrTableCell110.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell87.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell92.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell97.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    //this.xrTableCell4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.xrdQN.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    //this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    //this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                    //this.col_qnqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left)));
                }
            }
            else
            {
                CustomerPOFirst = this.GetCurrentColumnValue("CustomerPO").ToString();
                StyleFirst = this.GetCurrentColumnValue("Style").ToString();
                WOFirst = this.GetCurrentColumnValue("WO").ToString();
            }

            DrawTableCellBackColor(xrTableCell76);
            xrTableCell110.BackColor = xrTableCell76.BackColor;
            xrCustomer.BackColor = xrTableCell38.BackColor =
            xrDefectQty1Show.BackColor = xrDefectQty2Show.BackColor =
            xrDefectQty3Show.BackColor = xrDefectQty4Show.BackColor =
            xrDefectQty5Show.BackColor = xrDefectQty7Show.BackColor =
            xrDefectTypeQty.BackColor = xrMarjorDefectQty.BackColor =
            xrMinorDefectQty.BackColor = xrTableCell44.BackColor =
            xrPerMarjorDefect.BackColor = xrTableCell34.BackColor =
            xrPerMinorDefect.BackColor = xrTableCell74.BackColor =
            xrTableCell22.BackColor = xrTableCell71.BackColor =
            xrTableCell8.BackColor = xrTableCell75.BackColor =
            xrTableCell9.BackColor = xrTableCell29.BackColor =
            xrTableCell66.BackColor = xrdQN.BackColor =
            xrTableCell52.BackColor = xrTableCell110.BackColor =
            xrTableCell67.BackColor = xrTableCell76.BackColor =
            xrTableCell4.BackColor = xrTableCell33.BackColor =
            xrTableCell15.BackColor = xrTableCell87.BackColor =
            xrTableCell92.BackColor = xrTableCell97.BackColor =
            xrTableCell32.BackColor = xrTableCell110.BackColor;


            string IsRed = this.GetCurrentColumnValue("IsRed").ToString();

            //报表变红
            //xrTableCell4.ForeColor = xrTableCell29.ForeColor = IsRed == "1" ? Color.Red : Color.Black;
            xrTableCell29.ForeColor = IsRed == "1" ? Color.Red : Color.Black;



            if (AIsChooseTop3 == "Y")
            {
                xrdQN.Text = xrTableCell92.Text = xrTableCell32.Text = "";
            }



        }


        Color Color1 = Color.FromArgb(204, 192, 218);
        Color Color2 = Color.FromArgb(228, 223, 236);
        Color DrawColor = Color.FromArgb(228, 223, 236);

        void DrawTableCellBackColor(XRTableCell ATableCell)
        {
            if (_DateFrom != _DateTo) //By Week或By Monthly的情況
            {
                ATableCell.BackColor = Color.Transparent;
            }
            else
            {
                if (this.GetCurrentColumnValue("dAuditDate").ToString() == _DateFrom.ToString("MM-dd"))
                {
                    DrawColor = DrawColor == Color2 ? Color1 : Color2;
                    ATableCell.BackColor = DrawColor;
                }
                else
                {
                    ATableCell.BackColor = Color.Transparent;
                }
            }
        }





    }




}
