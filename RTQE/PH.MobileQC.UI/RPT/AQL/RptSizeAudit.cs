using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptSizeAudit : DevExpress.XtraReports.UI.XtraReport
    {
        public RptSizeAudit()
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            this.xrPivotGrid.OptionsView.ShowColumnGrandTotals = false;
            this.xrPivotGrid.OptionsView.ShowColumnTotals = false;
            this.xrPivotGrid.OptionsView.ShowRowGrandTotals = false;
            this.xrPivotGrid.OptionsView.ShowDataHeaders = false;
            this.xrPivotGrid.OptionsView.ShowColumnHeaders = false;

            this.xrPivotGrid.OptionsPrint.PrintHeadersOnEveryPage = true;
        }

        public RptSizeAudit(int AReportType, DateTime ABeginDate, DateTime AEndDate, string AProject, string AWO, string AStyle, string AColor)
            : this()
        {
            this.lbBeginDate.Text = ABeginDate.ToString("yyyy-MM-dd");
            this.lbEndDate.Text = AEndDate.ToString("yyyy-MM-dd");
            this.lbProject.Text = AProject;
            this.lbWO.Text = AWO;
            this.lbStyle.Text = AStyle;
            this.lbColor.Text = AColor;

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.bindingSource.DataSource = db.sp_GetSizeAuditReport(AReportType, ABeginDate, AEndDate, AProject, AWO, AStyle, AColor);
        }




        //private void xrPivotGrid_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    if (e.Field != null && e.Field.Area == DevExpress.XtraPivotGrid.PivotArea.DataArea)
        //    {
        //        double val = double.Parse(e.Text);
        //        val = convertValueUnitMgr(val, UnitConstants.Unit_J, UnitConstants.Unit_kWh, UnitConstants.Unit_kWh);
        //        string s = string.Format("{0:#,###.0}%", val);
        //        e.Text.Replace(e.Text, s);
        //    }
        //}


    }
}
