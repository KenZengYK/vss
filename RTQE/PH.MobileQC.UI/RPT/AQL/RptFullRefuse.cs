using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Data;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptFullRefuse : DevExpress.XtraReports.UI.XtraReport
    {
        string Fac, StartDate, EndDate;
        public RptFullRefuse()
        {
            InitializeComponent();
      
        }

        public RptFullRefuse(string factory, string start, string end)
        {
            InitializeComponent();
         

            Fac = factory; StartDate = start; EndDate = end;
            BindField();
            PrepareData();
        }

        private void PrepareData()
        {
            DataTable db = SqlDataHelper.GetRefuseList(Fac, 2, StartDate, EndDate);
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
            xrTableCell16.DataBindings.Add("Text", this.DataSource, "Line");
        }
    }
}
