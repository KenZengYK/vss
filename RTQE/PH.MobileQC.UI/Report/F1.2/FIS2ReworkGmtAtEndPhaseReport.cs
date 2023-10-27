using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Data;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FIS2ReworkGmtAtEndPhaseReport : DevExpress.XtraReports.UI.XtraReport
    {

        List<WIPDetailResult> Alist = new List<WIPDetailResult>();
        public FIS2ReworkGmtAtEndPhaseReport(string Fty, string WS, string ADate)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000037");         
            DateTime calDate = Convert.ToDateTime(ADate);
            title_En.Text =string.Format( reportHelper.ReportInfo.ReportName_EN, " " + MonthEn(calDate.Month) + " " + calDate.Day.ToString() );
            xrRptCode.Text = reportHelper.ReportInfo.ReportCode;
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            FIS2ReportHelper FIS2RptHelper = new FIS2ReportHelper();

            Alist =FIS2RptHelper.GetWIPDetailDataList(db, Fty, WS, ADate);
            this.bindingSource1.DataSource = Alist;

            
            //string str ="exec XXX '{0}','{1}','{2}'";
            //str = string.Format(str,Fty,WS, ADate);

            // MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            // DataSet ds = db.ExecuteDataSet(str, new DataSet(), "Opt");
            // List<FIS2ReworkGmtAtEndPhaseClass> AList = ds.Tables[0].AsEnumerable().Select(dr => new FIS2ReworkGmtAtEndPhaseClass 
            // {
            //     Cust = dr[""].ToString(),
            //     CustomerPO = dr[""].ToString(),
            //     CustStyle = dr[""].ToString(),
            //     ProjectNo = dr[""].ToString(),
            //     QNNo = dr[""].ToString(),
            //     ColorCode = dr[""].ToString(),
            //     Fty = dr[""].ToString(),
            //     Ws = dr[""].ToString(),
            //     Line = dr[""].ToString(),
            //     InspectionDate = dr[""].ToString(),
            //     Inspector = dr[""].ToString(),
            //     QNQty = Convert.ToInt32( dr[""].ToString() ),
            //     InspectedQty = Convert.ToInt32( dr[""].ToString()),
            //     NonInspectedPer = Convert.ToDecimal( dr[""].ToString() ),
            //     ReworkedQty = Convert.ToInt32( dr[""].ToString()),
            //     ReworkedPer = Convert.ToDecimal( dr[""].ToString() ),
            //     FreqChkPt = Convert.ToInt32(dr[""].ToString() ),
            //     Teamleader = dr[""].ToString()
                
            // }).ToList();



        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            WIPDetailResult obj = this.bindingSource1.Current as WIPDetailResult;
            if (obj == null) return;

            this.xrReworkedPer.ForeColor = obj.ReInspectedPercent > Convert.ToDecimal(0.04) ? Color.Red : Color.Black;

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int InspectedQtyS = Alist.Select(dr=>dr.InspectedQty??0).Sum();
            int ReInspectionedQtyS = Alist.Select(dr => dr.ReInspectionedQty??0).Sum();

            if (InspectedQtyS + ReInspectionedQtyS == 0)
                this.xrTableCell52.Text = "0.00%";
            else
                this.xrTableCell52.Text = Convert.ToDecimal(ReInspectionedQtyS * 1.00 / (InspectedQtyS + ReInspectionedQtyS)).ToString("P2");
            //xrTableCell52
        }

        public string MonthEn(int AMonth) 
        {
            if (AMonth == 1)
                return "Jan";
            else if (AMonth == 2)
                return "Feb";
            else if (AMonth == 3)
                return "Mar";
            else if (AMonth == 4)
                return "Apr";
            else if (AMonth == 5)
                return "May";
            else if (AMonth == 6)
                return "Jun";
            else if (AMonth == 7)
                return "Jul";
            else if (AMonth == 8)
                return "Aug";
            else if (AMonth == 9)
                return "Sep";
            else if (AMonth == 10)
                return "Oct";
            else if (AMonth == 11)
                return "Nov";
            else
                return "Dec";

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("WorkShop") == null) return;
            int InspectedQtyS = Alist.Where(dr => dr.WorkShop == this.GetCurrentColumnValue("WorkShop").ToString()).Select(dr => dr.InspectedQty ?? 0).Sum();
            int ReInspectionedQtyS = Alist.Where(dr => dr.WorkShop == this.GetCurrentColumnValue("WorkShop").ToString()).Select(dr => dr.ReInspectionedQty ?? 0).Sum();

            if (InspectedQtyS + ReInspectionedQtyS == 0)
                this.xrTableCell52.Text = "0.00%";
            else
                this.xrTableCell52.Text = Convert.ToDecimal(ReInspectionedQtyS * 1.00 / (InspectedQtyS + ReInspectionedQtyS)).ToString("P2");
        }

    }
}
