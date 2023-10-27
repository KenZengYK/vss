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

namespace PH.MobileQC.UI.AQL
{
    public partial class FullInspectionDefectPointAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        int DableColumCount = 0;
        public FullInspectionDefectPointAnalyseReport(DatePeroidTypes AReportDatePeroidType, string AWeekOrMonth, string AFactory, DateTime ADateFrom, DateTime ADateTo)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000025");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;

            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                title_En.Text = "Daily " + title_En.Text;
                xrllDate.Text = "[Full Inspection Date / 全審查日期 : " + ADateFrom.ToString("yyyy-MM-dd")+"]";
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                title_En.Text = "Weekly " + title_En.Text;
                xrllDate.Text = string.Format("[Week/周 {0} (Full Inspection Date / 全審查日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                title_En.Text = "Monthly " + title_En.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (Full Inspection Date / 全審查日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                title_En.Text = "Period Range of " + title_En.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (Full Inspection Date / 全審查日期 : {0} ~ {1})]", ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            
            string str = string.Format("exec sp_fullinspection_rpt21a '{0}', '{1}','{2}'", AFactory, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");
            DealHead(ds);
            List<FullInspectionDefectPointAnalyseClass> ListSource = AList(ds);
            bindingSource1.DataSource = ListSource;
            FullInspectionDefectPointAnalyseReport_Sub SubRpt=new FullInspectionDefectPointAnalyseReport_Sub(AListSub(ds));
            this.xrSubreport1.ReportSource = SubRpt;

            xrNoCustomer.Text = ListSource.Select(p => p.Customer).Distinct().Count().ToString();
            xrNoStyle.Text = ListSource.Select(p => p.Style).Distinct().Count().ToString();
            xrNoLine.Text = ListSource.Select(p => p.dLine).Distinct().Count().ToString();
            //xrPNDQty.Text = ListSource.Select(p => p.ShipmentQty).Distinct().Sum().ToString();
            //xrSampleGarments.Text = ListSource.Select(p => p.SampleQty).Distinct().Sum().ToString();

            var ShipmentQtyList = ListSource.GroupBy(p => p.po_seq).Select(a => new { SampleQty = a.Average(m => m.SampleQty) }).ToList();
            xrSampleGarments.Text = ShipmentQtyList.Select(p => p.SampleQty).Sum().ToString();

            var xrPNDQtyList = ListSource.GroupBy(p => p.po_seq).Select(a => new { ShipmentQty = a.Average(m => m.ShipmentQty) }).ToList();
            xrPNDQty.Text = xrPNDQtyList.Select(p => p.ShipmentQty).Sum().ToString(); 


            DableColumCount = ds.Tables[1].Rows.Count;
            xrFactory.Text = AFactory;
            //xrllDate.Text = ADateFrom.ToString("yyyy-MM-dd") + " ~ " + ADateTo.ToString("yyyy-MM-dd");
            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");


            
            //title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;
            
        }

        public void DealHead(DataSet ds) 
        {
            //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            //{
            //    this.FindControl("TCCode0" + (i + 1), true).Text = ds.Tables[0].Rows[i]["DefectCode"].ToString();
            //    this.FindControl("TCDesc0" + (i + 1), true).Text = ds.Tables[0].Rows[i]["DefectNameCN"].ToString();
            //}
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++) 
            {
                this.TCCode01.Text = ds.Tables[0].Rows[i]["d1"].ToString();
                this.TCCode02.Text = ds.Tables[0].Rows[i]["d2"].ToString();
                this.TCCode03.Text = ds.Tables[0].Rows[i]["d3"].ToString();
                this.TCCode04.Text = ds.Tables[0].Rows[i]["d4"].ToString();
                this.TCCode05.Text = ds.Tables[0].Rows[i]["d5"].ToString();
                this.TCCode06.Text = ds.Tables[0].Rows[i]["d6"].ToString();
                this.TCCode07.Text = ds.Tables[0].Rows[i]["d7"].ToString();
                this.TCCode08.Text = ds.Tables[0].Rows[i]["d8"].ToString();

                this.TCDesc01.Text = ds.Tables[0].Rows[i]["def1"].ToString();
                this.TCDesc02.Text = ds.Tables[0].Rows[i]["def2"].ToString();
                this.TCDesc03.Text = ds.Tables[0].Rows[i]["def3"].ToString();
                this.TCDesc04.Text = ds.Tables[0].Rows[i]["def4"].ToString();
                this.TCDesc05.Text = ds.Tables[0].Rows[i]["def5"].ToString();
                this.TCDesc06.Text = ds.Tables[0].Rows[i]["def6"].ToString();
                this.TCDesc07.Text = ds.Tables[0].Rows[i]["def7"].ToString();
                this.TCDesc08.Text = ds.Tables[0].Rows[i]["def8"].ToString();
                
            }
        }

        public List<FullInspectionDefectPointAnalyseClass> AList(DataSet ds) 
        {
            List<FullInspectionDefectPointAnalyseClass> AQLDefectList = ds.Tables[1].AsEnumerable().Select(dr => new FullInspectionDefectPointAnalyseClass()
            {
                po_seq=dr["po_seq"].ToString(),
                Customer = dr["cust"].ToString(),
                Week = int.Parse(dr["wk"].ToString()),
                StyleType = dr["prod"].ToString(),
                Style = dr["cstyle"].ToString(),
                //CustomerPO = dr["CustomerPO"].ToString(),
                ShipmentQty = int.Parse(dr["sqty"].ToString()==""?"0":dr["sqty"].ToString()),

                DefectQty1 = int.Parse(dr["q1"].ToString() == "" ? "0" : dr["q1"].ToString()),
                DefectQty2 = int.Parse(dr["q2"].ToString() == "" ? "0" : dr["q2"].ToString()),
                DefectQty3 = int.Parse(dr["q3"].ToString() == "" ? "0" : dr["q3"].ToString()),
                DefectQty4 = int.Parse(dr["q4"].ToString() == "" ? "0" : dr["q4"].ToString()),
                DefectQty5 = int.Parse(dr["q5"].ToString() == "" ? "0" : dr["q5"].ToString()),
                DefectQty6 = int.Parse(dr["q6"].ToString() == "" ? "0" : dr["q6"].ToString()),
                DefectQty7 = int.Parse(dr["q7"].ToString() == "" ? "0" : dr["q7"].ToString()),
                DefectQty8 = int.Parse(dr["q8"].ToString() == "" ? "0" : dr["q8"].ToString()),
                DefectQtyOther = int.Parse(dr["q9"].ToString() == "" ? "0" : dr["q9"].ToString()),

                DefectPointTypeQty = int.Parse(dr["d_type"].ToString() == "" ? "0" : dr["d_type"].ToString()),
                DefectPointTotalQty = int.Parse(dr["d_ttl"].ToString() == "" ? "0" : dr["d_ttl"].ToString()),
                DefectPointPer = decimal.Parse(dr["d_p"].ToString() == "" ? "0.00" : dr["d_p"].ToString()),

                CountLine = int.Parse(dr["line_ttl"].ToString() == "" ? "0" : dr["line_ttl"].ToString()),
                SampleQty = int.Parse(dr["a_qty"].ToString() == "" ? "0" : dr["a_qty"].ToString()),
                Examdays = int.Parse(dr["a_days"].ToString() == "" ? "0" : dr["a_days"].ToString()),
                CountLot = int.Parse(dr["lt_ttl"].ToString() == "" ? "0" : dr["lt_ttl"].ToString()),
                SampleRejQty = int.Parse(dr["a_rej"].ToString() == "" ? "0" : dr["a_rej"].ToString()),
                ExamResult = dr["a_rst"].ToString(),
                IsCompleted = dr["cmp"].ToString(),

                dLine = dr["line"].ToString(),
                dQN = dr["qnno"].ToString(),
                dAuditDate = Convert.ToDateTime(dr["dt"].ToString()).ToString("dd-MM"),
                dSampleQty = int.Parse(dr["qty"].ToString() == "" ? "0" : dr["qty"].ToString()),
                dLotSeq = int.Parse(dr["lot_seq"].ToString() == "" ? "0" : dr["lot_seq"].ToString()),
                dSampleRejQty = int.Parse(dr["rej"].ToString() == "" ? "0" : dr["rej"].ToString()),
                dExamResult = dr["rst"].ToString(),

                QNQty = int.Parse(dr["qn_qty"].ToString())
                
                
            }).ToList();
            return AQLDefectList;

        }

        public List<FullInspectionDefectPointAnalyseClass_Sub> AListSub(DataSet ds)
        {
            List<FullInspectionDefectPointAnalyseClass_Sub> AQLDefectList = ds.Tables[2].AsEnumerable().Select(dr => new FullInspectionDefectPointAnalyseClass_Sub()
            {
                //po_seq = dr["po_seq"].ToString(),
                Customer = "Customer Sub-total / 客戶小計（"+dr["cust"].ToString()+" ) : ",
                //Week = int.Parse(dr["wk"].ToString()),
                //StyleType = dr["prod"].ToString(),
                //Style = dr["cstyle"].ToString(),
                ////CustomerPO = dr["CustomerPO"].ToString(),
                //ShipmentQty = int.Parse(dr["sqty"].ToString() == "" ? "0" : dr["sqty"].ToString()),

                DefectQty1 = int.Parse(dr["q1"].ToString() == "" ? "0" : dr["q1"].ToString()),
                DefectQty2 = int.Parse(dr["q2"].ToString() == "" ? "0" : dr["q2"].ToString()),
                DefectQty3 = int.Parse(dr["q3"].ToString() == "" ? "0" : dr["q3"].ToString()),
                DefectQty4 = int.Parse(dr["q4"].ToString() == "" ? "0" : dr["q4"].ToString()),
                DefectQty5 = int.Parse(dr["q5"].ToString() == "" ? "0" : dr["q5"].ToString()),
                DefectQty6 = int.Parse(dr["q6"].ToString() == "" ? "0" : dr["q6"].ToString()),
                DefectQty7 = int.Parse(dr["q7"].ToString() == "" ? "0" : dr["q7"].ToString()),
                DefectQty8 = int.Parse(dr["q8"].ToString() == "" ? "0" : dr["q8"].ToString()),
                DefectQtyOther = int.Parse(dr["q9"].ToString() == "" ? "0" : dr["q9"].ToString()),

                DefectPointTypeQty = int.Parse(dr["d_type"].ToString() == "" ? "0" : dr["d_type"].ToString()),
                DefectPointTotalQty = int.Parse(dr["d_ttl"].ToString() == "" ? "0" : dr["d_ttl"].ToString()),
                DefectPointPer = decimal.Parse(dr["d_p"].ToString() == "" ? "0.00" : dr["d_p"].ToString()),

                CountLine = int.Parse(dr["line_ttl"].ToString() == "" ? "0" : dr["line_ttl"].ToString()),
                SampleQty = int.Parse(dr["a_qty"].ToString() == "" ? "0" : dr["a_qty"].ToString()),
                //Examdays = int.Parse(dr["a_days"].ToString() == "" ? "0" : dr["a_days"].ToString()),
                CountLot = int.Parse(dr["lt_ttl"].ToString() == "" ? "0" : dr["lt_ttl"].ToString()),
                SampleRejQty = int.Parse(dr["a_rej"].ToString() == "" ? "0" : dr["a_rej"].ToString()),
                //ExamResult = dr["a_rst"].ToString(),
                //IsCompleted = dr["cmp"].ToString(),

                dLine = dr["line_ttl"].ToString(),
                //dQN = dr["qnno"].ToString(),
                ////dAuditDate = Convert.ToDateTime(dr["dt"].ToString()).ToString("dd-MM"),
                dSampleQty = int.Parse(dr["qty"].ToString() == "" ? "0" : dr["qty"].ToString()),
                //dLotSeq = int.Parse(dr["lot_seq"].ToString() == "" ? "0" : dr["lot_seq"].ToString()),
                dSampleRejQty = int.Parse(dr["rej"].ToString() == "" ? "0" : dr["rej"].ToString()),
                //dExamResult = dr["rst"].ToString(),

                //QNQty = int.Parse(dr["qn_qty"].ToString())


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

        string po_seqFirst = "", po_seqSecomd = "";
        //string CustomerPOFirst = "", CustomerPOSecomd = "";
        int checkColum=0;
        private void xrTableRow7_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
          
           



            //處理合併單元格
            checkColum++;

            if (po_seqSecomd != "" || po_seqFirst != "")
            {
                // CustomerPOSecomd = CustomerPOFirst;
                //CustomerPOFirst = this.GetCurrentColumnValue("CustomerPO").ToString();
                po_seqSecomd = po_seqFirst;
                po_seqFirst = this.GetCurrentColumnValue("po_seq").ToString();
                //if (CustomerPOFirst == CustomerPOSecomd && StyleFirst == StyleSecomd)
                if (po_seqFirst == po_seqSecomd)
                {
                    this.xrCustomer.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrWeek.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrStyleType.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrCustomerPO.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrShipmentQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrDefectQty1Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty2Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty3Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty4Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty5Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty6Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty7Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQty8Show.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectQtyOtherShow.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrDefectTypeQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrMinorDefectQty.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrPerMarjorDefect.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrTableCell22.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell66.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrTableCell67.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell44.Borders = DevExpress.XtraPrinting.BorderSide.Right;

                    this.xrTableCell71.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    this.xrTableCell75.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    
                    this.xrTableCell4.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                    
                    //this.xrdQN.Borders = DevExpress.XtraPrinting.BorderSide.Right;


                    //((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrCustomer.Text = "";
                    this.xrWeek.Text = "";
                    this.xrStyleType.Text = "";
                    this.xrCustomerPO.Text = "";
                    this.xrShipmentQty.Text = "";

                    this.xrCustomerPO.Text = "";

                    this.xrDefectQty1Show.Text = "";
                    this.xrDefectQty2Show.Text = "";
                    this.xrDefectQty3Show.Text = "";
                    this.xrDefectQty4Show.Text = "";
                    this.xrDefectQty5Show.Text = "";
                    this.xrDefectQty6Show.Text = "";
                    this.xrDefectQty7Show.Text = "";
                    this.xrDefectQty8Show.Text = "";
                    this.xrDefectQtyOtherShow.Text = "";
                    this.xrDefectTypeQty.Text = "";

                    this.xrMinorDefectQty.Text = "";
                    this.xrPerMarjorDefect.Text = "";

                    this.xrTableCell22.Text = "";
                    this.xrTableCell66.Text = "";

                    this.xrTableCell67.Text = "";
                    this.xrTableCell44.Text = "";

                    this.xrTableCell71.Text = "";
                    this.xrTableCell75.Text = "";
                    
                    this.xrTableCell4.Text="";
                    //this.xrdQN.Text = "";
                }

                else
                {

                    this.xrCustomer.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrWeek.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrStyleType.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrCustomerPO.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrShipmentQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));


                    this.xrDefectQty1Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty2Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty3Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty4Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty5Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty6Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty7Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQty8Show.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrDefectQtyOtherShow.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrDefectTypeQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrMinorDefectQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrPerMarjorDefect.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrTableCell22.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell66.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell67.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell44.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell71.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    this.xrTableCell75.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));

                    this.xrTableCell4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                    //this.xrdQN.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
                }
            }
            else
            {
                //CustomerPOFirst = this.GetCurrentColumnValue("CustomerPO").ToString();
                po_seqFirst = this.GetCurrentColumnValue("po_seq").ToString();
            }

            //if (checkColum == DableColumCount) 
            //{
            //    this.xrTableCell29.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right)));
            //    this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)(( DevExpress.XtraPrinting.BorderSide.Right)));
            //    this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right)));
            //    this.xrTableCell23.Borders = ((DevExpress.XtraPrinting.BorderSide)(( DevExpress.XtraPrinting.BorderSide.Right)));
            //    this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right)));
            //    this.xrTableCell31.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right)));
            //}


        }

     

    }
}
