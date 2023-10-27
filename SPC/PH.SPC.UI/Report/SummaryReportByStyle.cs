using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.SPC.BO;
using PH.Platform.BO;
using System.Data;
using DevExpress.XtraPrinting;
using System.Collections.Generic;

namespace PH.SPC.UI.Report
{
    public partial class SummaryReportByStyle : DevExpress.XtraReports.UI.XtraReport
    {
        int TotalSampleQty = 0;
        public SummaryReportByStyle(DateTime ADespatchDateFrom, DateTime ADespatchDateTo, string APrdnSite, string ASeason, string APrdnCategory, string APrdnWs)
        {
            InitializeComponent();

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();
            string SqlStr = "exec sp_SummaryReportByStyle '{0}', '{1}', '{2}', '{3}', '{4}', '{5}'";
            SqlStr = string.Format(SqlStr, ADespatchDateFrom.Date, ADespatchDateTo.Date, APrdnSite, ASeason, APrdnCategory, APrdnWs);
            DataTable dt = db.ExecuteDataTable(SqlStr, "dt");
            var DataList = dt.AsEnumerable().Select(dr => new SummaryReportByPHStyleClass
            {
                CustomerCode = dr["CustomerCode"].ToString(),
                SampleType = dr["SampleType"].ToString(),
                StyleQty = Convert.ToInt32(dr["StyleQty"].ToString()),
                StyleID = Convert.ToString(dr["StyleID"]),
                SampleQty = Convert.ToInt32(dr["SampleQty"]),
                Remark = Convert.ToString(dr["Remark"])
            }).ToList();

            this.bindingSource.DataSource = DataList;

            tcFromDate.Text = ADespatchDateFrom.Date.ToString("yyyy/MM/dd");
            tcToDate.Text = ADespatchDateTo.Date.ToString("yyyy/MM/dd");
            tcPrdnSite.Text = APrdnSite;
            tcSeason.Text = ASeason;
            tcPrdnCategory.Text = APrdnCategory;
            tctcPrdnWs.Text = APrdnWs;

            //GroupFooter_CustomerCode.Visible = !AIsByCustGroup;
            TotalSampleQty = DataList.Select(p => p.SampleQty).Sum();
        }

        int SaveCustomerSampleQty = 0;
        private void tcCustomerSampleQty_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SaveCustomerSampleQty = Convert.ToInt32(e.Value);
        }


        public void MergeTableCell(XRTableCell TableCell, string FieldName)
        {
            object PreviousLine = this.GetPreviousColumnValue(FieldName);
            object CurrentLine = this.GetCurrentColumnValue(FieldName);
            object NextLine = this.GetNextColumnValue(FieldName);


            if (CurrentLine == null) //沒有記錄
            {
                return;
            }


            TableCell.Borders = BorderSide.Left | BorderSide.Right;

            if (this.CurrentRowIndex > 0 && Object.Equals(CurrentLine, PreviousLine))
            {
                TableCell.Text = "";
            }

            if (this.CurrentRowIndex == this.RowCount - 1) //最后一行
            {
                TableCell.Borders |= BorderSide.Bottom;
                return; //畫完最后一行的Bottom線，打完收工
            }

            if (!Object.Equals(CurrentLine, NextLine)) //當前行與一行不相等，畫Bottom線
            {
                TableCell.Borders |= BorderSide.Bottom;
            }
        }

        private void xrTableCell15_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MergeTableCell(sender as XRTableCell, "CustomerCode");
        }

        private void xrTableCell16_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MergeTableCell(sender as XRTableCell, "CustomerCode");

        }

        string GroupCustomerCode;
        string GroupSampleType;
        private void GroupHeader_CustomerCode_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GroupCustomerCode = this.GetCurrentColumnValue("CustomerCode").ToString();
            GroupSampleType = this.GetCurrentColumnValue("SampleType").ToString();
        }

        private void tcWOByGroup_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            IEnumerable<SummaryReportByPHStyleClass> lists = this.bindingSource.DataSource as IEnumerable<SummaryReportByPHStyleClass>;
            int GroupWOQty = lists.Where(p => p.CustomerCode == GroupCustomerCode && p.SampleType == GroupSampleType && !string.IsNullOrEmpty(p.Remark)).Select(p => p.Remark).Distinct().Count();
            int GroupStyleQty = lists.Where(p => p.CustomerCode == GroupCustomerCode && p.SampleType == GroupSampleType && !string.IsNullOrEmpty(p.StyleID)).Select(p => p.StyleID).Distinct().Count();
            (sender as XRTableCell).Text = string.Format("{0}    ( {0} / {1} = {2} )", GroupWOQty, GroupStyleQty, (1.0000 * GroupWOQty / GroupStyleQty).ToString("P"));
        }

        private void tcWOTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            IEnumerable<SummaryReportByPHStyleClass> lists = this.bindingSource.DataSource as IEnumerable<SummaryReportByPHStyleClass>;
            int TotalWOQty = lists.Where(p => !string.IsNullOrEmpty(p.Remark)).Select(p => p.Remark).Distinct().Count();
            int TotalStyleQty = lists.Where(p => !string.IsNullOrEmpty(p.StyleID)).Select(p => p.StyleID).Distinct().Count();
            (sender as XRTableCell).Text = string.Format("{0}    ( {0} / {1} = {2} )", TotalWOQty, TotalStyleQty, (1.0000 * TotalWOQty / TotalStyleQty).ToString("P"));
        }

    }
}
