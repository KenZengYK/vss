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
        //Xsj:������
        public string RptType = "";
        //Xsj:�yӋ�����б�
        public string WOs = "";
        //Xsj:��픵��Դ
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
            this.lblRptCaption.Text = (this.RptType == "Issue") ? "PH���ϰl�υR����" : "PH�������υR����";
            this.CellWOS.Text = this.WOs; 


        }

    }
}
