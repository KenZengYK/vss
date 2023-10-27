using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class iAuditFormAccessoriesSheetReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<AccessoryAuditReportTable> Alist = new List<AccessoryAuditReportTable>();
        string AAuditType = "";
        public iAuditFormAccessoriesSheetReport(AccessoryHeader ADetailList )
        {
            InitializeComponent();

            Alist = ADetailList.GetAccessoryAuditReportTable(ADetailList.AuditNo.ToString());

         
            this.bindingSource1.DataSource = Alist;        

            //Audit info.
           // xrTableRow3.Height = 90;

           // // I
           // xrTableRow4.Height = AuditType == "BraCup" ? 226 : 162;
           // // II
           // xrTableRow5.Height = AuditType == "BraCup" ? 126 : 54;
         
           //// III
           // xrTableRow6.Height = AuditType == "BraCup" ? 36 : 46;


           //xrTable1.Location = AuditType == "BraCup" ? new System.Drawing.Point(0, 542) : new System.Drawing.Point(0, 652);
           
            //xrTableCell1.Text = ADetailList.Remark;
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
             string Page = this.GetCurrentColumnValue("PageNO").ToString();
             List<AccessoryAuditReportTable> Sublist = new List<AccessoryAuditReportTable>();

             //Sublist = Alist.Where(dr => dr.PageNO.ToString() == Page && dr.Flag == 1).ToList();
             Sublist = Alist.Where(dr => dr.PageNO.ToString() == Page).ToList();
             iAuditFormAccessoriesDetailSheetReport Rpt = new iAuditFormAccessoriesDetailSheetReport(Sublist);
             xrSubreport1.ReportSource = Rpt;

             //Rpt.xrTableCell33.Text = AAuditType == "BraCup" ? "Mat'l Audit as unit by pr must based on AQL (data for SKU is vertical setup, 12 columns per page) " : "Mat'l Audit as unit by pc must based on AQL (data for SKU is vertical setup, 12 columns per page) ";
             //this.xrLabel1.Location = AAuditType == "BraCup" ? new System.Drawing.Point(0, 264) : new System.Drawing.Point(0, 228);


             //List<AccessoryAuditReportDetailTable> CasingSublist = new List<AccessoryAuditReportDetailTable>();
             //CasingSublist = Alist.Where(dr => dr.PageNO.ToString() == Page  && dr.Flag ==2).ToList();
             //IMQEResultAccessoryAuditCasingSheetReport CasingRpt = new IMQEResultAccessoryAuditCasingSheetReport(CasingSublist);
             //xrSubreport2.ReportSource = CasingRpt;
        }


    }
}
