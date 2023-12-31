using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using System.Linq;
using System.Data;
using PH.Platform.BO;
using PH.MobileQC.UI.RPT;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI
{
    public partial class WeeklyDefectPointsComparsionReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<WeeklyDefectPointsComparison> RptSource;
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        DataSet ds = new DataSet();
        public WeeklyDefectPointsComparsionReport(DataSet ReportSource, DatePeroidTypes AReportDatePeroidType,  string AWeekOrMonth, DateTime ADateFrom, DateTime ADateTo)
        {
            InitializeComponent();
            ds = ReportSource;
            RptSource = db.DetailSource(ReportSource);
            this.bindingSource1.DataSource = RptSource;
          
            this.xrLabel4.Text = "Printed On : " + DateTime.Now.ToString("yyyy-MM-dd");
            
            ReportHelper reportHelper = new ReportHelper("00000019");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;


            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                title_En.Text = "Daily " + title_En.Text;
                title_Cn.Text = "每日" + title_Cn.Text;
                xrllDate.Text = "[AQL Audit Date/審定日期 : " + ADateFrom.ToString("yyyy-MM-dd") + "]";
                
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                title_En.Text = "Weekly " + title_En.Text;
                title_Cn.Text = "每周" + title_Cn.Text;
                xrllDate.Text = string.Format("[Week/周 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]",
                    db.fn_GetFtybyWeek(ADateFrom),//AWeekOrMonth, 
                    ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                title_En.Text = "Monthly " + title_En.Text;
                title_Cn.Text = "每月" + title_Cn.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                title_En.Text = "Period Range of " + title_En.Text;
                title_Cn.Text = "周期" + title_Cn.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (AQL Audit Date/審定日期 : {0} ~ {1})]", ADateFrom.ToString("yyyy-MM-dd"), ADateTo.ToString("yyyy-MM-dd"));
            }

            WeeklyDefectPointsComparsionReport_Sub_Part1AsQI rpt_Sub = new WeeklyDefectPointsComparsionReport_Sub_Part1AsQI(ReportSource);
            xrSubreport1.ReportSource = rpt_Sub;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
              ////xrRichText1.Text=  this.GetCurrentColumnValue("AuditDefect").ToString();
              //richTextBox1.Text = this.GetCurrentColumnValue("AuditDefect").ToString();
              //string InspectionDefect = this.GetCurrentColumnValue("InspectionDefect").ToString();


              //string InspectionStr = InspectionDefect;
              //string[] Audits = richTextBox1.Text.Split(new string[] { " ,", "," }, StringSplitOptions.RemoveEmptyEntries);

              //if (string.IsNullOrEmpty(InspectionStr))
              //{
              //    this.richTextBox1.SelectAll();
              //    this.richTextBox1.SelectionColor = Color.Red;
              //    this.richTextBox1.SelectionAlignment = HorizontalAlignment.Left;
              //    //this.richTextBox1.Top = 5;
              //}
              //else
              //{
              //    foreach (var Str in Audits)
              //    {
              //        if (!InspectionStr.ToLower().Replace(" ","").Contains(Str.ToLower().Replace(" ","")))
              //        {
              //            int Index = this.richTextBox1.Find(Str);
              //            this.richTextBox1.Select(Index, Str.Length+1);
              //            this.richTextBox1.SelectionColor = Color.Red;
              //            this.richTextBox1.SelectionAlignment = HorizontalAlignment.Left;
              //            //this.richTextBox1.Top = 5;
              //        }
              //        else
              //        {
              //            int Index = this.richTextBox1.Find(Str);
              //            this.richTextBox1.Select(Index, Str.Length+1);
              //            this.richTextBox1.SelectionColor = Color.Black;
              //            this.richTextBox1.SelectionAlignment = HorizontalAlignment.Left;
              //            //this.richTextBox1.Top = 5;

              //        }
              //    }
              //}
              //this.richTextBox1.Visible = false;

              ////xrRichText1.TextAlignment = MiddleLeft;
              //xrRichText1.Rtf = this.richTextBox1.Rtf;
              //this.richTextBox1.Text = "";
            //xrRichText1.Text = "aaaaa";
              //if (string.IsNullOrEmpty(InspectionDefect)) { return; }
              //else
              //{
              //    string[] sArray = Regex.Split(InspectionDefect, ",", RegexOptions.IgnoreCase);
              //    foreach (string InspectionDefectText in sArray)
              //    {
              //        if (string.IsNullOrEmpty(richTextBox1.Text)) { return; }
              //        ArrayList list = getIndexArray(richTextBox1.Text, InspectionDefectText.Replace(" ", ""));

              //        for (int i = 0; i < list.Count; i++)
              //        {

              //            int index = (int)list[i];
              //            richTextBox1.Select(index, InspectionDefectText.Length);
              //            richTextBox1.SelectionColor = Color.Red;

              //        }

              //    }
              //}

        }

         private ArrayList getIndexArray(String inputStr, String findStr)
        {

            ArrayList list = new ArrayList();
            int start = 0;

            while (start < inputStr.Length)
            {
                int index = inputStr.IndexOf(findStr, start);

                if (index >= 0)
                {
                    list.Add(index);
                    start = index + findStr.Length;
                }
                else
                {
                    break;
                }

            }
            return list;

        }

         private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
         {
            //  xrTtlWs.Text= RptSource.Select(p => p.WorkShop).Distinct().Count().ToString();
            //  xrTtlLine.Text = RptSource.Select(p => p.Line).Distinct().Count().ToString();
            //  xrTtlProject.Text = RptSource.Select(p => p.Project).Distinct().Count().ToString();
            //  xrTtlStyle.Text = RptSource.Select(p => p.Style).Distinct().Count().ToString();
            //  xrTtlColor.Text = RptSource.Select(p => p.Color).Distinct().Count().ToString();
            //  xrTtlRwo.Text = RptSource.Select(p => p.RWO).Distinct().Count().ToString();            
            // //InSpection
            // xrTtlInspQty.Text = RptSource.Select(p => p.InspectionQty).Sum().ToString();
            // xrTtlInspeNub.Text =  RptSource.Select(p => p.InspectionDefectNub).Sum().ToString();
            // //Audit(Same)
            // xrTtlAuditQty.Text = RptSource.Select(p => p.AuditQty).Sum().ToString();
            // xrTtlAuditNub.Text = RptSource.Select(p => p.AuditDefectNub).Sum().ToString();
            // xrTtlAuditPer.Text = string.IsNullOrEmpty(xrTtlInspeNub.Text)==true?"0 %":Math.Round((xrTtlAuditNub.Text == "" ? 0 :Convert.ToDecimal(xrTtlAuditNub.Text)) *100/ (xrTtlInspeNub.Text == "" ? 0 : Convert.ToDecimal(xrTtlInspeNub.Text)),0).ToString()+ "%";
            ////Audit(different)
            // xrTtlAuditNewNub.Text = RptSource.Select(p => p.AuditDefectNub_diff).Sum().ToString();
            // xrTtlAuditNewPer.Text = string.IsNullOrEmpty(xrTtlInspeNub.Text) == true && string.IsNullOrEmpty(xrTtlAuditNewNub.Text) == true ? "0 %" :Math.Round((xrTtlAuditNub.Text == "" ? 0 : Convert.ToDecimal(xrTtlAuditNewNub.Text)) *100/ (Convert.ToDecimal(xrTtlInspeNub.Text) + Convert.ToDecimal(xrTtlAuditNewNub.Text)),0).ToString() + "%";
            // xrCustomer.Text ="# of Customer:  "+ RptSource.Select(p =>p.Project.ToString().Substring(0,4)).Distinct().Count().ToString();   
           
             
         }

         private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
         {

             xrSameDefect.Text = ds.Tables[1].Rows.Count.ToString();
             xrdiffDefect.Text = ds.Tables[2].Rows.Count.ToString();
             xrTtlWs.Text = RptSource.Select(p => p.WorkShop).Distinct().Count().ToString();
             xrTtlLine.Text = RptSource.Select(p => p.Line).Distinct().Count().ToString();
             xrTtlProject.Text = RptSource.Select(p => p.Project).Distinct().Count().ToString();
             xrTtlStyle.Text = RptSource.Select(p => p.Style).Distinct().Count().ToString();
             xrTtlColor.Text = RptSource.Select(p => p.Color).Distinct().Count().ToString();
             xrTtlRwo.Text = RptSource.Select(p => p.RWO).Distinct().Count().ToString();
             //InSpection
             xrTtlInspQty.Text = RptSource.Select(p => p.InspectionQty).Sum().ToString();
             xrTtlInspeNub.Text = RptSource.Select(p => p.InspectionCodeNub).Sum().ToString();
             //Audit(Same)
             xrTtlAuditQty.Text = RptSource.Select(p => p.AuditQty).Sum().ToString();
             xrTtlAuditNub.Text = RptSource.Select(p => p.AuditCodeNub).Sum().ToString();
             xrTtlAuditPer.Text = string.IsNullOrEmpty(xrTtlInspeNub.Text) == true ? "0 " : Math.Round((xrTtlAuditNub.Text == "" ? 0 : Convert.ToDecimal(xrTtlAuditNub.Text)) * 100 / (xrTtlInspeNub.Text == "" ? 0 : Convert.ToDecimal(xrTtlInspeNub.Text)), 0).ToString() ;
             //Audit(different)
             xrTtlAuditNewNub.Text = RptSource.Select(p => p.AuditCode_New_Nub).Sum().ToString();
             xrTtlAuditNewPer.Text = string.IsNullOrEmpty(xrTtlInspeNub.Text) == true && string.IsNullOrEmpty(xrTtlAuditNewNub.Text) == true ? "0 " : Math.Round((xrTtlAuditNub.Text == "" ? 0 : Convert.ToDecimal(xrTtlAuditNewNub.Text)) * 100 / (Convert.ToDecimal(xrTtlInspeNub.Text) + Convert.ToDecimal(xrTtlAuditNewNub.Text)), 0).ToString() ;
             xrCustomer.Text = "# of Customer:  " + RptSource.Select(p => p.Project.ToString().Substring(0, 4)).Distinct().Count().ToString();

             xrTtlAuditDefect_New_MajPer.Text = string.IsNullOrEmpty(xrTtlAuditQty.Text) ? "0" : Math.Round((RptSource.Select(p => p.AuditDefect_New_Maj).Sum()) * 100 / (Convert.ToDecimal(xrTtlAuditQty.Text)), 2).ToString() ;
             xrTtlAuditDefect_New_MinPer.Text = string.IsNullOrEmpty(xrTtlAuditQty.Text) ? "0" : Math.Round((RptSource.Select(p => p.AuditDefect_New_Min).Sum()) * 100 / (Convert.ToDecimal(xrTtlAuditQty.Text)), 2).ToString() ;
         }



    }
}
