using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MR.BO;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public partial class HSIssueSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        //Xsj:報表類型
        public string RptType = "";
        //Xsj:統計工單列表
        public string WOs = "";
        //Xsj:報表數據源
        public List<PH.MR.BO.MRHSCodeRptBO> HeaderBOList = new List<MRHSCodeRptBO>();

        public HSIssueSummaryReport()
        {
            InitializeComponent();
        }

        private void HSIssueSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            HSIssueStyleSummaryReport styleRpt=new HSIssueStyleSummaryReport();
            styleRpt.DataSource = HeaderBOList[0].StyleSummaryList;
            this.xrSubreport_Style.ReportSource = styleRpt; 


            HSIssueItemSummaryReport itemSummaryRpt = new HSIssueItemSummaryReport();
            itemSummaryRpt.DataSource = HeaderBOList[0].SummaryList;
            this.xrSubreport_Item.ReportSource = itemSummaryRpt; 
            this.lblRptCaption.Text = (this.RptType == "Issue") ? "PH物料發料匯總表" : "PH物料收料匯總表";
            this.CellWOS.Text = this.WOs; 


        }

    }
}
