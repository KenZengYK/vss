using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Data;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptAQLRefuse : DevExpress.XtraReports.UI.XtraReport
    {
        string Fac, StartDate, EndDate;
        public RptAQLRefuse()
        {
            InitializeComponent();
        

        }

        public RptAQLRefuse(string factory, string start, string end)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000023");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            xrLabel1.Text = reportHelper.ReportInfo.ReportName_CN;
        

            Fac = factory; StartDate = start; EndDate = end;
            BindField();
            PrepareData();
        }

        private void PrepareData()
        {
            DataTable db = SqlDataHelper.GetRefuseList(Fac, 1, StartDate, EndDate);
            this.DataSource = db;        
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrFac.Text = "工廠: "+Fac;
            xrDateRange.Text = StartDate + " ~ " + EndDate;
            xrPrintDate.Text = "打印日期:"+DateTime.Now.ToShortDateString();
        }

        private void BindField()
        { 
            // this.xrTableCell35.DataBindings.Add("Text", this.bsDetail, "F01");
            xrTableCell8.DataBindings.Add("Text", this.DataSource, "project");
            xrTableCell9.DataBindings.Add("Text", this.DataSource, "wo");
            xrTableCell10.DataBindings.Add("Text", this.DataSource, "style");
            xrTableCell11.DataBindings.Add("Text", this.DataSource, "color");
            xrTableCell12.DataBindings.Add("Text", this.DataSource, "chk_ttl");
            xrTableCell13.DataBindings.Add("Text", this.DataSource, "rej_qty");
            xrTableCell14.DataBindings.Add("Text", this.DataSource, "per");
            xrTableCell16.DataBindings.Add("Text", this.DataSource, "ProductQty");
            xrTableCell18.DataBindings.Add("Text", this.DataSource, "Line");
            
            
        }
    }
}
