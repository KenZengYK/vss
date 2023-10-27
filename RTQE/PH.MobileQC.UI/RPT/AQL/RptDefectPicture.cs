using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Data.Linq;
using System.Collections.Generic;
using System.IO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptDefectPicture : DevExpress.XtraReports.UI.XtraReport
    {
        string Title = "";
        public RptDefectPicture()
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000021");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            Title = reportHelper.ReportInfo.ReportName_EN;
        }

        public RptDefectPicture(int AReportType, DateTime ABeginDate, DateTime AEndDate, string ACustomer,
            string AStyle, string AFacotry, string AWorkShop)
            : this()
        {
            this.lbBeginDate.Text = ABeginDate.ToString("yyyy-MM-dd");
            this.lbEndDate.Text = AEndDate.ToString("yyyy-MM-dd");

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrLabel5.Text = string.Format("{0} {1}", AReportType == 2 ? "Mobile" : (AReportType == 0 ? "AQL" : "Full Audit"),Title);

            if (ACustomer.Length == 0)
            {
                this.xrLabel1.Text = " ";
                this.lbCustomer.Text = " ";
            }
            else
            {
                this.lbCustomer.Text = ACustomer;
            }
            if (AStyle.Length == 0)
            {
                this.xrLabel3.Text = " ";
                this.lbStyle.Text = " ";
            }
            else
            {
                this.lbStyle.Text = AStyle;
            }
            
            this.lbFactory.Text = AFacotry;
            this.lbWorkShop.Text = AWorkShop;

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.bindingSource.DataSource = db.GetDefectPictureReport(AReportType, ABeginDate, AEndDate, ACustomer, AStyle, AFacotry, AWorkShop);
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.bindingSource.Count == 0) return;

            this.lbGroupHeader.Text = string.Format("Line: {0}  Project: {1}  WO: {2}  Style: {3}  Color: {4}",
                Convert.ToString(this.GetCurrentColumnValue("Line")),
                Convert.ToString(this.GetCurrentColumnValue("Project")),
                Convert.ToString(this.GetCurrentColumnValue("WO")),
                Convert.ToString(this.GetCurrentColumnValue("Style")),
                Convert.ToString(this.GetCurrentColumnValue("Color")));
        }

    }
}
