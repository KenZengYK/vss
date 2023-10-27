using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;
using System.Globalization;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCSummaryInterimReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<CustQCMaster_Interim> QCList = new List<CustQCMaster_Interim>();
        ReportHelper reportHelper = new ReportHelper("00000031");

        public CustQCSummaryInterimReport(string AQCLocation, DateTime AFromDate, DateTime AToDate)
        {
            InitializeComponent();

           
            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, "Period Range");
            xrLabel3.Text = string.Format(reportHelper.ReportInfo.ReportName_CN, "ßLÆÚ¹ ‡ú");
            xrLabel2.Text = string.Format(reportHelper.ReportInfo.ReportCode, "3");


            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            QCList = db.CustQCMaster_Interims.Where(p => p.MfgLocation == AQCLocation && p.ExamDate >= AFromDate && p.ExamDate <= AToDate).OrderBy(p => p.ExamDate).ThenBy(p => p.OID).ToList();
            int i = 1;
            foreach (CustQCMaster_Interim cu in QCList)
            {
                cu.SeqNo = i++;
            }
            this.bindingSource1.DataSource = QCList.OrderBy(p => p.SeqNo);

            this.tcExamDate.Text = string.Format("Exam Date: {0} ~ {1}", AFromDate.ToString("yyyy-MM-dd"), AToDate.ToString("yyyy-MM-dd"));
            //            this.tcFactory.Text = string.Format("Q.C. loc.: {0}", this.)
        }

        public CustQCSummaryInterimReport(string AQCLocation, DateTime AFromDate, DateTime AToDate, int AWeek)
            : this(AQCLocation, AFromDate, AToDate)
        {
            this.tcExamDate.Text = string.Format("Exam Week:   {0}", AWeek.ToString());

            xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, "Wkly");
            xrLabel3.Text = string.Format(reportHelper.ReportInfo.ReportName_CN, "Ã¿ÖÜ");
            xrLabel2.Text = string.Format(reportHelper.ReportInfo.ReportCode, "2"); 
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int i = 1;
            foreach (CustQCMaster_Interim cu in QCList.OrderBy(p => p.SeqNo))
            {
                this.FindControl("tcQCExamNo" + i, true).Text = NullValueShowTBA(cu.QCExamNO);
                this.FindControl("Productstype" + i, true).Text = NullValueShowTBA(cu.ProductType);
                this.FindControl("ShptDate" + i, true).Text = cu.ShipmentDateShow; //ConvertDateFormat(cu.ShipmentDate ?? DateTime.MinValue);
                this.FindControl("POinshpt" + i, true).Text = NullValueShowTBA(cu.ShipmentPOQty.ToString());
                this.FindControl("Styleinshpt" + i, true).Text = NullValueShowTBA(cu.ShipmentStyleQty.ToString());
                this.FindControl("Colorinshpt" + i, true).Text = NullValueShowTBA(cu.ShipmentColorQty.ToString());
                this.FindControl("Sizeinshpt" + i, true).Text = NullValueShowTBA(cu.ShipmentSizeQty.ToString());
                this.FindControl("CaseReadyforexam" + i, true).Text = NullValueShowTBA(cu.ExamCartonQty.ToString());
                this.FindControl("StandardCartonQty" + i, true).Text = NullValueShowTBA(cu.StandardCartonQty.ToString());
                this.FindControl("oflog" + i, true).Text = NullValueShowTBA(cu.LogQty.ToString());
                this.FindControl("QCexaminer" + i, true).Text = NullValueShowTBA(cu.QCExaminer);
                this.FindControl("CatLogNO" + i, true).Text = NullValueShowTBA(cu.CatLogNO);
                this.FindControl("MfgLocation" + i, true).Text = NullValueShowTBA(cu.MfgLocation);
                i++;

                if (i > 8) return;
            }
        }

        string NullValueShowTBA(string ASourceValue)
        {
            return string.IsNullOrEmpty(ASourceValue) ? "tba" : ASourceValue;
        }

        //public string ConvertDateFormat(DateTime ADate)
        //{
        //    if (ADate == DateTime.MinValue) return "";
        //    return ADate.ToString("dd-MMM", CultureInfo.CreateSpecificCulture("en-GB"));
        //}

        private void tcOperationMarjor_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int OptMarjorDefectQtyShow = ConvertToInt(this.GetCurrentColumnValue("OptMarjorDefectQtyShow"));
            int AQLMarjorDefectAcceptQty = ConvertToInt(this.GetCurrentColumnValue("AQLMarjorDefectAcceptQty"));
            if (OptMarjorDefectQtyShow > AQLMarjorDefectAcceptQty)
            {
                this.tcOperationMarjor.ForeColor = Color.Red;
            }
            else
            {
                this.tcOperationMarjor.ForeColor = Color.Black;
            }
        }

        int ConvertToInt(object ACurrentColumnValue)
        {
            try
            {
                return Convert.ToInt32(ACurrentColumnValue);
            }
            catch
            {
                return 0;
            }
        }

        private void tcOperationMinor_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int OptMinorDefectQtyShow = ConvertToInt(this.GetCurrentColumnValue("OptMinorDefectQtyShow"));
            int AQLMinorDefectAcceptQty = ConvertToInt(this.GetCurrentColumnValue("AQLMinorDefectAcceptQty"));
            if (OptMinorDefectQtyShow > AQLMinorDefectAcceptQty)
            {
                this.tcOperationMinor.ForeColor = Color.Red;
            }
            else
            {
                this.tcOperationMinor.ForeColor = Color.Black;
            }
        }

        private void tcOperationCritical_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int OptCriticalDefectQtyShow = ConvertToInt(this.GetCurrentColumnValue("OptCriticalDefectQtyShow"));
            if (OptCriticalDefectQtyShow > 0)
            {
                this.tcOperationCritical.ForeColor = Color.Red;
            }
            else
            {
                this.tcOperationCritical.ForeColor = Color.Black;
            }
        }

        private void tcCasingCritical_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int CasingCriticalDefectQtyShow = ConvertToInt(this.GetCurrentColumnValue("CasingCriticalDefectQtyShow"));
            if (CasingCriticalDefectQtyShow > 0)
            {
                this.tcCasingCritical.ForeColor = Color.Red;
            }
            else
            {
                this.tcCasingCritical.ForeColor = Color.Black;
            }
        }

        private void CustQCSummaryInterimReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }
}
