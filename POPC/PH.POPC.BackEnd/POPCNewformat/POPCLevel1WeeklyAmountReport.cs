using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Windows.Forms;
using PH.POPC.BO;
using System.Linq;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class POPCLevel1WeeklyAmountReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCLevel1WeeklyAmountReport(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            InitializeComponent();
            _condition = condition;
            InitValue();
            //    Condition.AnalysisSortBy = this.SortBy;
            //    Condition.Company = this.Company;
            //    Condition.EndCustCode = this.EndCustCode;
            //    Condition.Supplier = this.Supplier;
            //    Condition.POStatus = this.POStatus;
            //    Condition.OrderClass = this.OrderClass;

            //    Condition.IssueDateFrom = this.IssueDateFrom;
            //    Condition.IssueDateTo = this.IssueDateTo;
            //    Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            //    Condition.DeliveryDateTo = this.DeliveryDateTo;

            xrPrintDate.Text ="Print Date: " +DateTime.Now.ToString("yyyy-MM-dd");

          


        }

        List<DateTime> dtList = new List<DateTime>();
        DateTime maxDt;
        List<POPCLevel1WeeklyAmountReportClass> List = new List<POPCLevel1WeeklyAmountReportClass>();
        public POPCLevel1WeeklyAmountReport(PH.POPC.BO.POPCEnquiryCondition condition, List<POPCLevel1WeeklyAmountReportClass> AListDetail, string WeekTxt)
        {
            InitializeComponent();
            _condition = condition;
            InitValue();
            List  = AListDetail;

            xrPrintDate.Text = "Print Date: " +ChanggeDateTime( DateTime.Now);
           
  //@PurchaseOfficerLists varchar(max) = '',
  //@PHDGOrPHHK           varchar(200) = 'All',      -- 有3種類型： PH-DG、PH-HK、All

            lbPHDGOrPHHK.Text = string.Format("({0})", condition.PHDGOrPYHK);
            txtSuppOrCust.Text = condition.SuppCodeOrCustCode == "SuppCode" ? "Supp Code" : "Cust Code";

            this.cellSupp.Text = (string.IsNullOrEmpty(_condition.Supplier)) ? "ALL" : _condition.Supplier;

            this.txtDeliveryDateFrom.Text = condition.DeliveryDateFrom == DateTime.MinValue ? "" :  ChanggeDateTime(condition.DeliveryDateFrom) + " To " + ChanggeDateTime(condition.DeliveryDateTo );
            //this.txtDeliveryDateTo.Text = condition.DeliveryDateTo==DateTime.MinValue?"": condition.DeliveryDateTo.ToString("yyyy-MM-dd");
            this.txtEndCustCode.Text = condition.EndCustCode;
            this.txtERPPOClass.Text = condition.OrderClass.ToString();
            this.txtIssueDateFrom.Text =  condition.IssueDateFrom == DateTime.MinValue ? "" :  ChanggeDateTime(condition.IssueDateFrom) + " To " +ChanggeDateTime(condition.IssueDateTo)  ;
            //this.txtIssueDateTo.Text = (condition.IssueDateTo == DateTime.MinValue ? "" : condition.IssueDateTo.ToString("yyyy-MM-dd"));
            this.txtSuppCode.Text = condition.Supplier;
            this.cellWeek.Text = WeekTxt;
            //    Condition.AnalysisSortBy = this.SortBy;
            //    Condition.Company = this.Company;
            //    Condition.EndCustCode = this.EndCustCode;
            //    Condition.Supplier = this.Supplier;
            //    Condition.POStatus = this.POStatus;
            //    Condition.OrderClass = this.OrderClass;

            //    Condition.IssueDateFrom = this.IssueDateFrom;
            //    Condition.IssueDateTo = this.IssueDateTo;
            //    Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            //    Condition.DeliveryDateTo = this.DeliveryDateTo;
            if (condition.IssueDateFrom != DateTime.MinValue)
                dtList.Add(condition.IssueDateFrom);
            if (condition.IssueDateTo != DateTime.MinValue)
                dtList.Add(condition.IssueDateTo);
            if (condition.DeliveryDateFrom != DateTime.MinValue)
                dtList.Add(condition.DeliveryDateFrom);
            if (condition.DeliveryDateTo != DateTime.MinValue)
                dtList.Add(condition.DeliveryDateTo);

            //DateTime dt = DateTime.MinValue;
            //DateTime minDt = dtList.Min();
             maxDt = dtList.Max();

            //int? w1 = PH.POPC.BO.POColorSizeDetail.GetWeek(minDt);
            //int? w2 = PH.POPC.BO.POColorSizeDetail.GetWeek(maxDt);

            //DateTime minDtMonday = startDate(minDt);
            //DateTime minDtSunday = MondayDate(minDtMonday);

            //string minDtStr = "(" + minDtMonday.ToString("yyyy-MM-dd") + "~" + minDtSunday.ToString("yyyy-MM-dd") + ")";


            //DateTime maxDtMonday = startDate(maxDt);
            //DateTime maxDtSunday = MondayDate(maxDtMonday);

            //string maxDtStr = "(" + maxDtMonday.ToString("yyyy-MM-dd") + "~" + maxDtSunday.ToString("yyyy-MM-dd") + ")";

            //this.cellWeek.Text = string.Format("From Week {0}{2} To Week {1}{3}", w1, w2, minDtStr, maxDtStr);



        }    


        private void InitValue()
        {
        }
        PH.POPC.BO.POPCEnquiryCondition _condition;
        decimal _rcqty = 0;
        decimal _qty = 0;
        //PH.POPC.BO.POPCAnalysisSortBy _sortBy;

        private void POPCLevel1WeeklyAmountReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object obj = this.DataSource;
            //if (obj is BindingSource)
            //{
            //    object ds = ((BindingSource)obj).DataSource;
            //    List<object> aa = ds as List<object>;
            //    GetMaxMinDate(aa);

            //    //set datasource
            //    //this.xrPivotGrid1.DataSource = ds;
            //    this.DataSource = null;
            //}
            //else
            //{
            //    //set datasource
            //    //this.xrPivotGrid1.DataSource = obj;
            //    this.DataSource = null;
            //}

            //this.cellSupp.Text = (string.IsNullOrEmpty(_condition.Supplier)) ? "ALL" : _condition.Supplier;




        }
        private void GetMaxMinDate(List<object> ds)
        {
            //DateTime dt = DateTime.MinValue;
            //DateTime minDt = DateTime.MaxValue;
            //DateTime maxDt = DateTime.MinValue;

            //foreach (var a in ds)
            //{
            //    PH.POPC.BO.POColorSizeDetail sku = a as PH.POPC.BO.POColorSizeDetail;
            //    if (sku == null) continue;
            //    dt = sku.DeliveryDate ?? DateTime.MinValue;
            //    minDt = (dt > minDt) ? minDt : dt;
            //    maxDt = (dt > maxDt) ? dt : maxDt;
            //}

            //int? w1 = PH.POPC.BO.POColorSizeDetail.GetWeek(minDt);
            //int? w2 = PH.POPC.BO.POColorSizeDetail.GetWeek(maxDt);

            //DateTime minDtMonday = startDate(minDt);
            //DateTime minDtSunday = MondayDate(minDtMonday);

            //string minDtStr = "(" + minDtMonday.ToString("yyyy-MM-dd") + "~" + minDtSunday.ToString("yyyy-MM-dd") + ")";


            //DateTime maxDtMonday = startDate(maxDt);
            //DateTime maxDtSunday = MondayDate(maxDtMonday);

            //string maxDtStr = "(" + maxDtMonday.ToString("yyyy-MM-dd") + "~" + maxDtSunday.ToString("yyyy-MM-dd") + ")";

            //this.cellWeek.Text = string.Format("From Week {0}{2} To Week {1}{3}", w1, w2, minDtStr, maxDtStr);
        }

        public DateTime startDate(DateTime dt) 
        {
            return dt.AddDays(1 - Convert.ToInt32(dt.DayOfWeek.ToString("d")));
        }


        public DateTime MondayDate(DateTime dt)
        {
            return dt.AddDays(6); 
        }

        string AWeek1 = "", AWeek2 = "", AWeek3 = "", AWeek4 = "", AWeek5 = "", AWeek6 = "", AWeek7 = "", AWeek8 = "";
        string Page = "1"; string Page1 = "";

        List<int> ListWeek = new List<int>();
        List<int> ListWeek2 = new List<int>();
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (List.Count == 0) return;
            Page1 = this.GetCurrentColumnValue("Page").ToString();


           int Week1 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week1 != null).Select(dr => dr.Week1??0).FirstOrDefault();
           int Week2 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week2 != null).Select(dr => dr.Week2??0).FirstOrDefault();
           int Week3 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week3 != null).Select(dr => dr.Week3??0).FirstOrDefault();
           int Week4 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week4 != null).Select(dr => dr.Week4??0).FirstOrDefault();
           int Week5 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week5 != null).Select(dr => dr.Week5??0).FirstOrDefault();
           int Week6 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week6 != null).Select(dr => dr.Week6??0).FirstOrDefault();
           int Week7 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week7 != null).Select(dr => dr.Week7??0).FirstOrDefault();
           int Week8 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week8 != null).Select(dr => dr.Week8??0).FirstOrDefault();

           int Year8 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year8 != null).Select(dr => dr.Year8 ?? 0).FirstOrDefault();
           int Year7 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year7 != null).Select(dr => dr.Year7 ?? 0).FirstOrDefault();
           int Year6 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year6 != null).Select(dr => dr.Year6 ?? 0).FirstOrDefault();
           int Year5 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year5 != null).Select(dr => dr.Year5 ?? 0).FirstOrDefault();
           int Year4 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year4 != null).Select(dr => dr.Year4 ?? 0).FirstOrDefault();
           int Year3 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year3 != null).Select(dr => dr.Year3 ?? 0).FirstOrDefault();
           int Year2 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year2 != null).Select(dr => dr.Year2 ?? 0).FirstOrDefault();
           int Year1 = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Year1 != null).Select(dr => dr.Year1 ?? 0).FirstOrDefault();

           ListWeek.Clear();

            if(Week1>0)
            ListWeek.Add(Week1);
            if(Week2>0)
            ListWeek.Add(Week2);
            if(Week3>0)
            ListWeek.Add(Week3);
            if(Week4>0)
            ListWeek.Add(Week4);
            if(Week5>0)
            ListWeek.Add(Week5);
            if(Week6>0)
            ListWeek.Add(Week6);
            if(Week7>0)
            ListWeek.Add(Week7);
            if(Week8>0)
            ListWeek.Add(Week8);

            //ListWeek2.AddRange(ListWeek);


            ////int? w1 = PH.POPC.BO.POColorSizeDetail.GetWeek(minDt);
            ////int? w2 = PH.POPC.BO.POColorSizeDetail.GetWeek(maxDt);
            //int w1 = ListWeek2.Min();

            //int w2 = ListWeek2.Where(dr => dr < 99).Max();

            //DateTime minDtMonday;
            //DateTime minDtSunday;

            //GetWeekSpan(out minDtMonday, out minDtSunday, w1, maxDt.Year);
            //string minDtStr = "( " + minDtMonday.ToString("yyyy-MM-dd") + " ~ " + minDtSunday.ToString("yyyy-MM-dd") + " )";


            //DateTime maxDtMonday;
            //DateTime maxDtSunday;

            //GetWeekSpan(out maxDtMonday, out maxDtSunday, w2, maxDt.Year);

            //string maxDtStr = "( " + maxDtMonday.ToString("yyyy-MM-dd") + " ~ " + maxDtSunday.ToString("yyyy-MM-dd") + " )";

            //this.cellWeek.Text = string.Format("From Week {0} {2} To Week {1} {3}", w1, w2, minDtStr, maxDtStr);


            string  dtBeginDate; 
            string  dtEndDate;
            if (Week1 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week1, Year1);
            
                string txtWeek1 = "Week " + (Week1 == 0 ? "" : Week1.ToString()) + "\r\n" + "( " + dtBeginDate + " ~ " + dtEndDate + " )";
                xrWeek1.Text = Week1 == 99 ? "Grand Total" : txtWeek1;
            }
            else
            {
                xrWeek1.Text = "";
            
            }

            xrWeekAll1.Text = xrWeek1.Text !=""? "ALL":"";
            xrWeekBalance1.Text = xrWeek1.Text != "" ? "Balance" : "";


            if (Week2 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week2, Year2);
                string txtWeek2 = "Week " + (Week2 == 0 ? "" : Week2.ToString()) + "\r\n" + "( " + dtBeginDate + " ~ " + dtEndDate + " )";
                xrWeek2.Text = Week2 == 99 ? "Grand Total" : txtWeek2;
            }
            else 
            {
                xrWeek2.Text = "";
              
            }

            xrWeekAll2.Text = xrWeek2.Text != "" ? "ALL" : "";
            xrWeekBalance2.Text = xrWeek2.Text != "" ? "Balance" : "";


            if (Week3 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week3, Year3);
                string txtWeek3 = "Week " + (Week3 == 0 ? "" : Week3.ToString()) + "\r\n" + "( " + dtBeginDate+ " ~ " + dtEndDate + " )";
                xrWeek3.Text = Week3 == 99 ? "Grand Total" : txtWeek3;
            }
            else 
            {
                xrWeek3.Text = "";
              
            }

            xrWeekAll3.Text = xrWeek3.Text != "" ? "ALL" : "";
            xrWeekBalance3.Text = xrWeek3.Text != "" ? "Balance" : "";


            if (Week4 > 0)
            {
                          
                 GetWeekSpan(out dtBeginDate, out dtEndDate, Week4, Year4);
                
                string txtWeek4 = "Week " + (Week4 == 0 ? "" : Week4.ToString()) + "\r\n" + "( " + dtBeginDate + " ~ " + dtEndDate + " )";
                 xrWeek4.Text = Week4== 99 ? "Grand Total" : txtWeek4;
            }
            else
            {
                xrWeek4.Text = "";
                
            }
            xrWeekAll4.Text = xrWeek4.Text != "" ? "ALL" : "";
            xrWeekBalance4.Text = xrWeek4.Text != "" ? "Balance" : "";


            if (Week5 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week5, Year5);
                string txtWeek5 = "Week " + (Week5 == 0 ? "" : Week5.ToString()) + "\r\n " + "( " + dtBeginDate + " ~ " + dtEndDate + " )";
                xrWeek5.Text = Week5 == 99 ? "Grand Total" : txtWeek5;
            }
            else
            {
                xrWeek5.Text = "";
    
            }

            xrWeekAll5.Text = xrWeek5.Text != "" ? "ALL" : "";
            xrWeekBalance5.Text = xrWeek5.Text != "" ? "Balance" : "";

            if (Week6 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week6, Year6);
                string txtWeek6 = "Week " + (Week6 == 0 ? "" : Week6.ToString()) + "\r\n" + "( " + dtBeginDate+ " ~ " + dtEndDate + ") ";
                xrWeek6.Text = Week6==99?"Grand Total": txtWeek6;
          
            }
            else
            {
                xrWeek6.Text = "";
               
            }
            xrWeekAll6.Text = xrWeek6.Text != "" ? "ALL" : "";
            xrWeekBalance6.Text = xrWeek6.Text != "" ? "Balance" : "";

            if (Week7 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week7, Year7);
                string txtWeek7 = "Week " + (Week7 == 0 ? "" : Week7.ToString()) + "\r\n" + "( " + dtBeginDate+ " ~ " + dtEndDate + " )";
                xrWeek7.Text = Week7 == 99 ? "Grand Total" : txtWeek7;
            }
            else
            {
                xrWeek7.Text = "";
                
            }
            xrWeekAll7.Text = xrWeek7.Text != "" ? "ALL" : "";
            xrWeekBalance7.Text = xrWeek7.Text != "" ? "Balance" : "";

            if (Week8 > 0)
            {
                GetWeekSpan(out dtBeginDate, out dtEndDate, Week8, Year8);
                string txtWeek8 = "Week " + (Week8 == 0 ? "" : Week8.ToString()) + "\r\n" + "( " + dtBeginDate + " ~ " + dtEndDate + " )";
                xrWeek8.Text = Week8 == 99 ? "Grand Total" : txtWeek8;
            }
            else
            {
                xrWeek8.Text = "";
              
            }

            xrWeekAll8.Text = xrWeek8.Text != "" ? "ALL" : "";
            xrWeekBalance8.Text = xrWeek8.Text != "" ? "Balance" : "";


           
           
         
            
            
          
            



            //xrWeek1.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1)  && dr.Week1 !=null ).Select(dr => dr.Week1.ToString()).FirstOrDefault();
            //xrWeek2.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week2 != null).Select(dr => dr.Week2.ToString()).FirstOrDefault();
            //xrWeek3.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week3 != null).Select(dr => dr.Week3.ToString()).FirstOrDefault();
            //xrWeek4.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week4 != null).Select(dr => dr.Week4.ToString()).FirstOrDefault();
            //xrWeek5.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week5 != null).Select(dr => dr.Week5.ToString()).FirstOrDefault();
            //xrWeek6.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week6 != null).Select(dr => dr.Week6.ToString()).FirstOrDefault();
            //xrWeek7.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week7 != null).Select(dr => dr.Week7.ToString()).FirstOrDefault();
            //xrWeek8.Text = List.Where(dr => dr.Page == Convert.ToInt32(Page1) && dr.Week8 != null).Select(dr => dr.Week8.ToString()).FirstOrDefault(); 
            
            //xrWeek1.Text = "";
            //xrWeek2.Text = "";
            //xrWeek3.Text = "";
            //xrWeek4.Text = "";
            //xrWeek5.Text = "";
            //xrWeek6.Text = "";
            //xrWeek7.Text = "";
            //xrWeek8.Text = "";
            //xrWeek1.Text = xrWeek1.Text !=""?xrWeek1.Text: this.GetCurrentColumnValue("Week1").ToString();
            //xrWeek2.Text = xrWeek1.Text != "" ? xrWeek2.Text : this.GetCurrentColumnValue("Week2").ToString();
            //xrWeek3.Text = xrWeek1.Text != "" ? xrWeek3.Text : this.GetCurrentColumnValue("Week3").ToString();
            //xrWeek4.Text = xrWeek1.Text != "" ? xrWeek4.Text : this.GetCurrentColumnValue("Week4").ToString();
            //xrWeek5.Text = xrWeek1.Text != "" ? xrWeek5.Text : this.GetCurrentColumnValue("Week5").ToString();
            //xrWeek6.Text = xrWeek1.Text != "" ? xrWeek6.Text : this.GetCurrentColumnValue("Week6").ToString();
            //xrWeek7.Text = xrWeek1.Text != "" ? xrWeek7.Text : this.GetCurrentColumnValue("Week7").ToString();
            //xrWeek8.Text = xrWeek1.Text != "" ? xrWeek8.Text : this.GetCurrentColumnValue("Week8").ToString();
            
        }

        private void detailBand1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //xrWeek1.Text = this.GetCurrentColumnValue("Week1").ToString() != "" ? this.GetCurrentColumnValue("Week1").ToString() : xrWeek1.Text;
            //xrWeek2.Text = this.GetCurrentColumnValue("Week2").ToString() != "" ? this.GetCurrentColumnValue("Week2").ToString() : xrWeek2.Text;
            //xrWeek3.Text = this.GetCurrentColumnValue("Week3").ToString() != "" ? this.GetCurrentColumnValue("Week3").ToString() : xrWeek3.Text;
            //xrWeek4.Text = this.GetCurrentColumnValue("Week4").ToString() != "" ? this.GetCurrentColumnValue("Week4").ToString() : xrWeek4.Text;
            //xrWeek5.Text = this.GetCurrentColumnValue("Week5").ToString() != "" ? this.GetCurrentColumnValue("Week5").ToString() : xrWeek5.Text;
            //xrWeek6.Text = this.GetCurrentColumnValue("Week6").ToString() != "" ? this.GetCurrentColumnValue("Week6").ToString() : xrWeek6.Text;
            //xrWeek7.Text = this.GetCurrentColumnValue("Week7").ToString() != "" ? this.GetCurrentColumnValue("Week7").ToString() : xrWeek7.Text;
            //xrWeek8.Text = this.GetCurrentColumnValue("Week8").ToString() != "" ? this.GetCurrentColumnValue("Week8").ToString() : xrWeek8.Text;

            //xrWeek1.Text = xrWeek1.Text != "" ? xrWeek1.Text : this.GetCurrentColumnValue("Week1").ToString();
            //xrWeek2.Text = xrWeek2.Text != "" ? xrWeek2.Text : this.GetCurrentColumnValue("Week2").ToString();
            //xrWeek3.Text = xrWeek3.Text != "" ? xrWeek3.Text : this.GetCurrentColumnValue("Week3").ToString();
            //xrWeek4.Text = xrWeek4.Text != "" ? xrWeek4.Text : this.GetCurrentColumnValue("Week4").ToString();
            //xrWeek5.Text = xrWeek5.Text != "" ? xrWeek5.Text : this.GetCurrentColumnValue("Week5").ToString();
            //xrWeek6.Text = xrWeek6.Text != "" ? xrWeek6.Text : this.GetCurrentColumnValue("Week6").ToString();
            //xrWeek7.Text = xrWeek7.Text != "" ? xrWeek7.Text : this.GetCurrentColumnValue("Week7").ToString();
            //xrWeek8.Text = xrWeek8.Text != "" ? xrWeek8.Text : this.GetCurrentColumnValue("Week8").ToString();


            //if (AWeek1 == "") AWeek1 = this.GetCurrentColumnValue("Week1").ToString();
            //if (AWeek2 == "") AWeek2 = this.GetCurrentColumnValue("Week2").ToString();
            //if (AWeek3 == "") AWeek3 = this.GetCurrentColumnValue("Week3").ToString();
            //if (AWeek4 == "") AWeek4 = this.GetCurrentColumnValue("Week4").ToString();
            //if (AWeek5 == "") AWeek5 = this.GetCurrentColumnValue("Week5").ToString();
            //if (AWeek6 == "") AWeek6 = this.GetCurrentColumnValue("Week6").ToString();
            //if (AWeek7 == "") AWeek7 = this.GetCurrentColumnValue("Week7").ToString();
            //if (AWeek8 == "") AWeek8 = this.GetCurrentColumnValue("Week8 ").ToString();

        }

        //DateTime startWeek = dt.AddDays(1 - Convert.ToInt32(dt.DayOfWeek.ToString(" d ")));  // 本周周一
        //DateTime endWeek = startWeek.AddDays(6); // 本周周日

        private static void GetWeekSpan(out string dtBeginDate, out string dtEndDate, int iWeeks,int Years)
        {
            int iCurrentYear = Years == 0 ? 2020 : Years;
            DateTime dtFirstDate = new DateTime(iCurrentYear, 1, 1);
            iWeeks = iWeeks == 99 ? 1 : iWeeks;
            int iDays = (iWeeks - 1) * 7;
            dtFirstDate = dtFirstDate.AddDays(iDays);
            //int week = iWeeks;
            //if (week == 0) week = 7; //周日
            //dtBeginDate = DateTime.Today.AddDays(-(week - 1));
            //dtEndDate = dtBeginDate.AddDays(6);

            int iDaysOfWeek = (int)dtFirstDate.DayOfWeek;
            dtBeginDate =ChanggeDateTime( dtFirstDate.AddDays(-(iDaysOfWeek - 1) - 1));
            dtEndDate = ChanggeDateTime(dtFirstDate.AddDays(7 - iDaysOfWeek - 1));
        }

        private static string ChanggeDateTime(DateTime dt)
        {
            if (dt.ToString("yyyy-MM-dd").Length >= 10)
                return dt.ToString("yyyy-MM-dd").Substring(2, 8);
            else
            {
                return dt.ToString("yyyy-MM-dd");
            }
        }


        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int AllAmount1 = List.Where(dr => dr.Week1 != 99).Select(dr => Convert.ToInt32(dr.AllAmount1 ?? 0)).Sum();
            int BalanceAmount1 = List.Where(dr => dr.Week1 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount1 ?? 0)).Sum();

            int AllAmount2 = List.Where(dr => dr.Week2 != 99).Select(dr => Convert.ToInt32(dr.AllAmount2??0)).Sum();
            int BalanceAmount2 = List.Where(dr => dr.Week2 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount2??0)).Sum();

            int AllAmount3 = List.Where(dr => dr.Week3 != 99).Select(dr => Convert.ToInt32(dr.AllAmount3 ?? 0)).Sum();
            int BalanceAmount3 = List.Where(dr => dr.Week3 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount3 ?? 0)).Sum();

            int AllAmount4 = List.Where(dr => dr.Week4 != 99).Select(dr => Convert.ToInt32(dr.AllAmount4 ?? 0)).Sum();
            int BalanceAmount4 = List.Where(dr => dr.Week4 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount4 ?? 0)).Sum();

            int AllAmount5 = List.Where(dr => dr.Week5 != 99).Select(dr => Convert.ToInt32(dr.AllAmount5 ?? 0)).Sum();
            int BalanceAmount5 = List.Where(dr => dr.Week5 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount5 ?? 0)).Sum();

            int AllAmount6 = List.Where(dr => dr.Week6 != 99).Select(dr => Convert.ToInt32(dr.AllAmount6 ?? 0)).Sum();
            int BalanceAmount6 = List.Where(dr => dr.Week6 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount6 ?? 0)).Sum();

            int AllAmount7 = List.Where(dr => dr.Week7 != 99).Select(dr => Convert.ToInt32(dr.AllAmount7 ?? 0)).Sum();
            int BalanceAmount7 = List.Where(dr => dr.Week7 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount7 ?? 0)).Sum();

            int AllAmount8 = List.Where(dr => dr.Week8 != 99).Select(dr => Convert.ToInt32(dr.AllAmount8 ?? 0)).Sum();
            int BalanceAmount8 = List.Where(dr => dr.Week8 != 99).Select(dr => Convert.ToInt32(dr.BalanceAmount8 ?? 0)).Sum();

            xrAll1.Text = AllAmount1.ToString(); xrBalance1.Text = BalanceAmount1.ToString();
            xrAll2.Text = AllAmount2.ToString(); xrBalance2.Text = BalanceAmount2.ToString();
            xrAll3.Text = AllAmount3.ToString(); xrBalance3.Text = BalanceAmount3.ToString();
            xrAll4.Text = AllAmount4.ToString(); xrBalance4.Text = BalanceAmount4.ToString();
            xrAll5.Text = AllAmount5.ToString(); xrBalance5.Text = BalanceAmount5.ToString();
            xrAll6.Text = AllAmount6.ToString(); xrBalance6.Text = BalanceAmount6.ToString();
            xrAll7.Text = AllAmount7.ToString(); xrBalance7.Text = BalanceAmount7.ToString();
            xrAll8.Text = AllAmount8.ToString(); xrBalance8.Text = BalanceAmount8.ToString();
          
          
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            for (int i = 1; i <= 8; i++) 
            {
                if (this.FindControl("xrAl" + i.ToString(), true).Text == "0")
                    this.FindControl("xrAl" + i.ToString(), true).Text = "";
            }

            for (int i = 1; i <= 8; i++)
            {
                if (this.FindControl("xrBalanc" + i.ToString(), true).Text == "0")
                    this.FindControl("xrBalanc" + i.ToString(), true).Text = "";
            }
            //if (xrAl1.Text == "0") xrAl1.Text = "";
            //if (xrAl2.Text == "0") xrAl1.Text = "";
            //if (xrAl3.Text == "0") xrAl1.Text = "";
            //if (xrAl4.Text == "0") xrAl1.Text = "";
            //if (xrAl5.Text == "0") xrAl1.Text = "";
            //if (xrAl6.Text == "0") xrAl1.Text = "";
            //if (xrAl7.Text == "0") xrAl1.Text = ""; 
            //if (xrAl8.Text == "0") xrAl1.Text = "";
           
        }


      

        private void xrAl1_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl2_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl3_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl4_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl5_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl6_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl7_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrAl8_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc1_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc2_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc3_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc4_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }
        private void xrBalanc5_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            //if (e.Value == "0") xrBalanc5.Text = "";
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc6_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc7_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

        private void xrBalanc8_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (e.Text == "0") e.Text = "";
        }

      



    }
}
