using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Common.Report;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Data.Linq;

namespace PH.MIDc.UI
{
    public static class PrintHelper
    {
        private static PH.MIDc.BO.Detail midcDetail;
        private static SampleOrder midcSampleOrder;
        private static Spec midcSpec;

        #region Materials Development Input Forms-Sheet1
        public static void PrintFormsSheet1(PH.MIDc.BO.Detail detail)
        {
            midcDetail = detail;
            PHReport report = new PHReport();
            //report.ReportTitle = "Materials Development Input Forms";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(50, 50, 50, 50);
            report.Landscape = false;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            //report.DataSource = detail;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintFormsSheet1);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintFormsSheet1);
            report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_PrintFormsSheet1);
            report.CreateReport();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintFormsSheet1(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 45;
            aWidth = 300;
            //aWidth = iClientPageWidth - 100;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Material IDentity Certificate ({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material IDentity Certificate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 150;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Material IDentity Certificate ({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily);
            x = iClientPageWidth - 100;

            aHeight = 15;
            y += aHeight;
            aWidth = 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SampleOrderNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            y += aHeight;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SHEET 1", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 9F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            x = 0;
            aHeight = 3;
            aWidth = iClientPageWidth;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, aHeight);
            x += aWidth;
            y += (aHeight + 8);
            e.Y = y;

        }
        static void report_DetailBandCreating_PrintFormsSheet1(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;

            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;

            y += 8;
            int y0 = y;
            aHeight = 18;
            #endregion

            #region XRControlStyle

            XRControlStyle lbDetailStyle = new XRControlStyle();
            lbDetailStyle.Font = new Font(PHReport.DefaultFontFamily, 8F, FontStyle.Bold);
            lbDetailStyle.Borders = BorderSide.None;
            lbDetailStyle.TextAlignment = TextAlignment.MiddleLeft;

            lbDetailStyle.StyleUsing.UseBorders = true;
            lbDetailStyle.StyleUsing.UseTextAlignment = true;
            lbDetailStyle.StyleUsing.UseFont = true;

            lbDetailStyle.StyleUsing.UseForeColor = false;
            lbDetailStyle.StyleUsing.UseBorderWidth = false;
            lbDetailStyle.StyleUsing.UseBorderColor = false;
            lbDetailStyle.StyleUsing.UseBackColor = false;
            lbDetailStyle.StyleUsing.UsePadding = false;

            e.Report.StyleSheet.Add(lbDetailStyle);

            #endregion

            int width1 = 100;
            int width2 = 220;
            #region --1.1--
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Create Date", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, Controller.PHDateTimeString((midcDetail.CreateDate ?? DateTime.Now), "yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season No.", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SeasonNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material type", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MaterialType, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pattern No.", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Pattern, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Lace No.", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Lace, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            int x11 = x;
            int y1 = y;
            #endregion
            #region --1.2--
            y = y0;
            int xRight = x11 + 20;
            width2 = iClientPageWidth - xRight - width1;

            x = iClientPageWidth - width1 * 2;
            aWidth = width1 / 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic | FontStyle.Underline);
            x += aWidth;
            aWidth = width1 * 3 / 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Status, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0}    {1}", midcDetail.Supplier, midcDetail.SupplierProfile.SupplierName), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Beneficiary", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Beneficiary, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Agent", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Agent, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Standard Dev", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.StandardDev.ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            int x12 = x;
            #endregion
            #region --2--
            width1 = 150;
            width2 = iClientPageWidth / 2 - width1;

            aHeight = 25;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Article No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SuppRef, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 15;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MaterialCode, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;
            int x21 = x;

            y = y1;
            aHeight = 40;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Special Label", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SpecialLabel, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true);
            xrLabel.WordWrap = true;
            x += aWidth;
            y += aHeight;

            aHeight = 15;
            x = x21;
            aWidth = width1 + width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "(Spe label:Coolmax,Lycra,Lycra soft,Mat Tricot,Microfibre,Leaver etc.)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;
            int x2 = x;
            int y2 = y;
            #endregion
            #region --3--
            width1 = 200;
            width2 = iClientPageWidth - width1;

            aHeight = 25;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Commodity :-(General)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            string str = string.Format("(For band lace only :- Edging with [ {0} ] single    [ {1} ] double scallops)", ((midcDetail.Edging_Single ?? false) ? "X" : "   "), ((midcDetail.Edging_DoubleScallops ?? false) ? "X" : "   "));
            str = (midcDetail.MaterialGroup == "L") ? "" : str;
            xrLabel = PHReport.CreateLabel(e.ReportBand, str, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft, false, 7F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = 0;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Commodity, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.TopLeft, true, 7F, PHReport.DefaultUnicodeFontFamily);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            x += aWidth;
            y += aHeight;
            int y3 = y;
            #endregion
            #region --4--
            y = y3;
            width1 = 140;
            width2 = 180;

            aHeight = 25;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Price Details", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Unit Measure(Supplier)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SupplierUOM, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation No.", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.LastQtnRef, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Last Quotation date", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, Controller.PHDateTimeString((midcDetail.LastQtnDate ?? DateTime.Now), "yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Price validity", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0} days", midcDetail.QtnPriceValidityDays), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation expiry date", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, Controller.PHDateTimeString((midcDetail.QtnPriceExpiryDate ?? DateTime.Now), "yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Gauge", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Gauge, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;
            int y4 = y;
            #endregion
            #region --5--
            aHeight = 18;
            y += aHeight;

            width1 = 130;
            width2 = 60;

            aHeight = 20;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Price", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Ratio", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            int i = 0;
            foreach (RatioPrice rp in midcDetail.RatioPrices)
            {
                if (rp.Ratio == 0 || rp.Price == 0) continue;
                i++;

                x = 0;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, (rp.Price ?? 0).ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width2;
                xrLabel = PHReport.CreateLabel(e.ReportBand, rp.Ratio, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, rp.ColorCategory, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                y += aHeight;
            }
            for (int j = i; j < 14; j++)
            {
                x = 0;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width2;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                y += aHeight;
            }
            int x5 = x;

            #region Price surcharge from supplier
            width1 = 250;
            width2 = iClientPageWidth - width1;
            aHeight = 18;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Price surcharge from supplier(if any)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "For order below order min./color min.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SubchargeOrder, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "For ship mode changing from sea to air", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SubchargeShipMode, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #endregion
            int y5 = y;
            #endregion
            #region --6--
            y = y3;
            x = xRight;
            aHeight = 5;
            y += aHeight;

            width1 = 260;
            width2 = iClientPageWidth - width1 - xRight;

            #region Width,Currency, Terms, Sub-Cost CAC

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Unit Measure(PH standard)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.PHUnit, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Marker Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MarkerWidthS1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Tubular Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.TubularWidthS1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Relaxtion buffer - length(Est.)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.Relaxtion ?? 0).ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Wastage allowance(Est.)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.WastageOnCAC ?? 0).ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Currency", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Currency, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Exchange Rate(std)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.MidcCurrency.StdSellRate ?? 0).ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Exchange Rate(current)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.MidcCurrency.CurrSellRate ?? 0).ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Payment Terms", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.PaymentTerm, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Estimate Interest Rate", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.EstInterest.ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Delivery Terms", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.DeliveryTerm, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;
            #endregion

            #region Sub-Cost All-in-Prince:

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Transportation cost", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Transportation.ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Freight cost", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Freight.ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Additional Freight cost", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.AdditionalFreight.ToString("0.00'%'"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion

            #region Value Adjust

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Value Adjust", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "1.Value Adjust of Additional dyeing buffer", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);//, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.ValueAdjustAddDyeing ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "2.Value Adjust of price increase protection buffer", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.PriceIncrProtect ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3.Value Adjust of Uncertainly Quality buffer", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.UncertainQuality ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "4.Value Adjust of others buffer", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.OthersBuffer ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion

            int x6 = x;
            y += 10;

            #region AllInPrice

            width1 = 200;
            int widht3 = 70;
            width2 = iClientPageWidth - width1 - xRight - widht3;

            aHeight = 25;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "All in Price (HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 14F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.AllInPrice.ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = widht3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("  / {0}", midcDetail.PHUnit), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "All in Price (HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 14F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SQMPrice.ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = widht3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "  / SQM", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Target All in Price (HKD)", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.TargetPrice ?? 0).ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Redirect Price", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.RedirectPrice.ToString("0.0000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;
            #endregion

            int y6 = y;

            #endregion
            #region --7--
            y = Math.Max(y5, y6);
            y += 5;
            width1 = iClientPageWidth;
            aHeight = 25;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Comments/Reports:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            y += aHeight;

            aHeight = 18;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Comments, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.TopLeft, true, 7F, PHReport.DefaultUnicodeFontFamily);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            x += aWidth;
            y += aHeight;
            int y7 = y;
            #endregion

            e.Y = y;


        }
        static void report_ReportFooterBandCreating_PrintFormsSheet1(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            y += 5;
            x = 0;
            aHeight = 30;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "P.S:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            string str = "1. Price surcharge from supplier for ship mode changing from sea to air is partly or wholly covered by \"additional freight cost\".";
            str += "\r\n2. Usable width is count without selvedge and pin holes.";
            str += "\r\n3. Relaxation buffer of width should be covered by the usable width.";
            str += "\r\n4. Yield measure is based on marker width,PH standard u/m + relaxation buffer & wastage allowance.";
            str += "\r\n5. Band lace scallop matching buffer during spreading process is covered by the relaxation buffer also.";
            str += "\r\n6. All in price is base on PH u/m & supplier width,without the cost caused by the relaxation buffer and wastage allowance.";
            str += " \r\n";
            aHeight = 15;
            aWidth = iClientPageWidth - 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, str, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Italic);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            y += 30;

            e.Y = y;
        }
        #endregion

        #region Materials Development Input Forms-Sheet2
        public static void PrintFormsSheet2(PH.MIDc.BO.Detail detail, Spec spec)
        {
            midcDetail = detail;
            midcSpec = spec;
            PHReport report = new PHReport();
            //report.ReportTitle = "Materials Development Input Forms";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(50, 50, 50, 50);
            report.Landscape = false;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            //report.DataSource = detail;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintFormsSheet2);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintFormsSheet2);
            report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_PrintFormsSheet2);
            report.CreateReport();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintFormsSheet2(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            //x = 0;
            //aHeight = 45;
            //aWidth = iClientPageWidth - 100;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Material IDentity Certificate ({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            x = 0;
            aHeight = 45;
            aWidth = 300;
            //aWidth = iClientPageWidth - 100;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Material IDentity Certificate ({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material IDentity Certificate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 150;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Material IDentity Certificate ({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("({0})", midcDetail.MIDStatus), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily);
            x = iClientPageWidth - 100;


            aHeight = 15;
            y += aHeight;
            aWidth = 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SampleOrderNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            y += aHeight;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SHEET 2", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 9F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            x = 0;
            aHeight = 3;
            aWidth = iClientPageWidth;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, 2);
            x += aWidth;
            y += (aHeight + 8);
            e.Y = y;

        }
        static void report_DetailBandCreating_PrintFormsSheet2(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;

            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region XRControlStyle
            float fsize = 8F;

            XRControlStyle lbDetailStyle = new XRControlStyle();
            lbDetailStyle.Font = new Font(PHReport.DefaultFontFamily, fsize, FontStyle.Bold);
            lbDetailStyle.Borders = BorderSide.None;
            lbDetailStyle.TextAlignment = TextAlignment.MiddleLeft;

            lbDetailStyle.StyleUsing.UseBorders = true;
            lbDetailStyle.StyleUsing.UseTextAlignment = true;
            lbDetailStyle.StyleUsing.UseFont = true;

            lbDetailStyle.StyleUsing.UseForeColor = false;
            lbDetailStyle.StyleUsing.UseBorderWidth = false;
            lbDetailStyle.StyleUsing.UseBorderColor = false;
            lbDetailStyle.StyleUsing.UseBackColor = false;
            lbDetailStyle.StyleUsing.UsePadding = false;

            e.Report.StyleSheet.Add(lbDetailStyle);

            #endregion

            int width1;
            int width2;
            y += 8;
            int y0 = y;
            aHeight = 18;
            #region

            #region --1 PO details--
            width1 = 140;
            width2 = 220;

            aHeight = 25;
            y = y0;
            x = 0;
            aWidth = width1 + width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Purchase Order Details", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material Code", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SuppRef, lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min/color", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MinColor, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min/order", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MinOrder, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min/Production", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.MinStartProduct, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Dyeing Multiple", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.DyeingMultiple, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            int x1 = x;
            int y1 = y;
            #endregion
            #region --2 Specification--
            y = y1;
            aHeight = 18;
            y += aHeight;
            width1 = 145;
            width2 = 70;

            aHeight = 25;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Specification", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width1 + width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "(To be filled or provided by supplier)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Composition", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Yarn Count", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            int i = 0;
            foreach (CompositionDetail c in midcDetail.CompositionDetails)
            {
                if (c.Composition == "" || c.Per == 0) continue;
                i++;
                x = 0;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, c.Composition, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
                x += aWidth;
                aWidth = width2;
                xrLabel = PHReport.CreateLabel(e.ReportBand, (c.Per ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, c.YarnCount, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
                x += aWidth;
                y += aHeight;
            }
            for (int j = i; j < 11; j++)
            {
                x = 0;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width2;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleCenter, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                aWidth = width1;
                xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, false, 8F, PHReport.DefaultFontFamily, FontStyle.Bold);
                x += aWidth;
                y += aHeight;
            }
            int x2 = x;
            int y2 = y;
            #endregion
            #region --3 Transit time,leadtime, QA status,rate--
            y = y0;
            int xRight = x1 + 10;
            x = xRight;
            //aHeight = 18;
            //y += aHeight;

            #region Transit time

            width1 = 150;
            width2 = iClientPageWidth - width1 - xRight;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Color:   {0}", midcSpec == null ? "" : midcSpec.Color), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Color Category:   {0}", midcSpec == null ? "" : midcSpec.ColorCategory), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            width1 = 150;
            width2 = iClientPageWidth - width1 - xRight;
            //aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Country of origin", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.Country, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Disccharge Port", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.DiscchargePort, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Ship Mode", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.ShipMode, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Transit Time Truck", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0}  days", midcDetail.TransitTimeTruck), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Transit Time Air", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0}  days", midcDetail.TransitTimeAir), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Transit Time Boat", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0}  days", midcDetail.TransitTimeBoat), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;



            #endregion

            #region QA Status
            width1 = 150;
            int width3 = 70;
            width2 = iClientPageWidth - width1 - width3 * 2 - xRight;

            aHeight = 5;
            y += aHeight;

            aHeight = 25;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QA Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Lead time - Have yarn", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.LeadTimeHYCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.YarnDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Lead time - Have greige", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.LeadTimeGeigeCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.GeigeDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Right, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Lead time - Running", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.LeadTimeRunningCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.RunningDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Right, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Exclusive By", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2 + width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.ExclusiveBy, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            #endregion

            #region rate

            y += 3;
            x = x1;
            aHeight = 3;
            aWidth = iClientPageWidth - x;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            y += aHeight;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Conversion Rate", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.RateToPHUnit ?? 0).ToString("0.0000"), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("from {0}", midcDetail.SupplierUOM), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("to {0}", midcDetail.PHUnit), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1 + width2 + width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Conversion Rate for tubular fabric", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("1 {0} :", midcDetail.SupplierUOM), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.SuppM ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width1 + width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "   running M vs Supplier width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("1 {0} :", midcDetail.SupplierUOM), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcDetail.TubularM ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width1 + width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "   running M vs Tubular width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = x1;
            aHeight = 3;
            aWidth = iClientPageWidth - x;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            y += aHeight;
            #endregion

            #region Unit
            width1 = (iClientPageWidth - xRight) / 2;
            aWidth = 110;
            width2 = width1 - aWidth;
            width1 = aWidth;

            aHeight = 18;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pack unit:", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            //aWidth = width2 + width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.PackUnit, lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            //y += aHeight;

            //x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sub Pack unit:", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = iClientPageWidth - x;
            //aWidth = width2 +width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.SubPackUnit, lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Risk Item:", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;// +width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.RiskItem, lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            //y += aHeight;

            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight gm/sqm:", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = iClientPageWidth - x;
            //aWidth = width2 +width3 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcDetail.WeightGmSqm, lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            //-----------------------------------
            x = xRight;
            width1 = (iClientPageWidth - xRight);
            //width2 = iClientPageWidth- xRight - width1 ;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Supplier Width: {0}", midcDetail.SupplierWidthS1), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;
            x = xRight;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Usable Width: {0}", midcDetail.UsableWidthS1), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            x = x1;
            aHeight = 3;
            aWidth = iClientPageWidth - x;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, 1);
            y += aHeight;

            int x3 = x;
            int y3 = y;
            #endregion

            #endregion
            #region --4 Spec: for supplier and PH--
            y = Math.Max(y2, y3);

            if (midcSpec == null)
            {
                e.Y = y;
                return;
            }

            width1 = 160;
            width2 = 140;
            int width12 = width1 + width2;
            int width21 = 80;
            int width22 = width2 - width21;

            aHeight = 18;
            x = 0;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier Data:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline | FontStyle.Italic);
            x += aWidth;
            aWidth = width1 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Oeko standard 100 OK?     {0}", midcSpec.Oeko == 0 ? "Yes" : (midcSpec.Oeko == 1 ? "No" : "")), lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            y += aHeight;

            #region Width

            x = 0;
            aWidth = width1 + width2 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Width:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            aWidth = width2 * 2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "    For PH Std Lab Report:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcSpec.SupplierWidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Usable Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcSpec.Supplier_UsableWidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Actual Usable Width", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, midcSpec.PH_UsableWidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            x += aWidth;
            y += aHeight;

            #endregion
            #region Weight

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight gm/sqm", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Weight_GmSqm_Per ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "+/-%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   gm", midcSpec.Supplier_Weight_GmSqm), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Weight_GmSqm_Per ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "+/-%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   gm", midcSpec.PH_Weight_GmSqm), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight for linear meter", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Weight_LinearMeter_Per ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "+/-%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   gm", midcSpec.Supplier_Weight_LinearMeter), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Weight_LinearMeter_Per ?? 0).ToString("0.00"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "+/-%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   gm", midcSpec.PH_Weight_LinearMeter), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion
            #region Natural Relaxation

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Natural Relaxation:- (Linear metric)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Length/warp", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   %", midcSpec.Supplier_Relaxation_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   %", midcSpec.PH_Relaxation_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Width/wept", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   %", midcSpec.Supplier_Relaxation_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   %", midcSpec.PH_Relaxation_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion
            #region Pattern Report Size

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pattern Report Size:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Length", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Pattern_Length ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "mm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Pattern_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Pattern_Length ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "mm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Pattern_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Pattern_Width ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "mm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Pattern_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Pattern_Width ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "mm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Pattern_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion
            #region Elongation

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Elongation:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Length", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Elongation_Length ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "kg", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Elongation_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Elongation_Length ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "kg", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Elongation_Length_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.Supplier_Elongation_Width ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "kg", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Elongation_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = width21;
            xrLabel = PHReport.CreateLabel(e.ReportBand, (midcSpec.PH_Elongation_Width ?? 0).ToString("0"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, fsize, PHReport.DefaultFontFamily, FontStyle.Underline);
            x += aWidth;
            aWidth = width22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "kg", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Elongation_Width_Per), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;
            #endregion
            #region Shrinkage

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shrinkage:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Washing - Length", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Shrinkage_Length_Washing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Shrinkage_Length_Washing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Washing - Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Shrinkage_Width_Washing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Shrinkage_Width_Washing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Ironing - Length", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Shrinkage_Length_Ironing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Shrinkage_Length_Ironing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Ironing - Width", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.Supplier_Shrinkage_Width_Ironing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   +/-%", midcSpec.PH_Shrinkage_Width_Ironing), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            #endregion
            #region Color

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, fsize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Underline);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color fasteness", lbDetailStyle, new Point(x, y), new Size(aWidth, aHeight));
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   deg.", midcSpec.Supplier_Shrinkage_ColorFasteness), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth + width2;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:0.00}   deg.", midcSpec.PH_Shrinkage_ColorFasteness), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleRight);
            x += aWidth;
            y += aHeight;

            #endregion
            int x4 = x;
            int y4 = y;
            #endregion
            e.Y = y;

            #endregion
        }
        static void report_ReportFooterBandCreating_PrintFormsSheet2(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            y += 5;
            x = 0;
            aHeight = 3;
            aWidth = iClientPageWidth;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, 2);
            x += aWidth;
            y += (aHeight + 8);

            x = 0;
            aHeight = 30;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "P.S:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            string str = "1. Illuminant condition, used combination illuminants of TL84 (Point of Sales) and D65 (Artificial Daylight)";
            str += "\r\n    as our standard color system.";
            str += "\r\n2. Matching procedure for fabric, lace and shoulder straps should be side by side.";
            str += "\r\n3. Matching procedure for materials and accessories used inside the merchandises should be based on the back.";
            str += "\r\n4. Technical specification sheet from supplier [  ] attached [  ] to be submitted later [  ] not provided.";
            str += " \r\n";
            aHeight = 15;
            aWidth = iClientPageWidth - 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, str, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Italic);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            y += 30;

            x = 0;
            aHeight = 20;
            aWidth = iClientPageWidth / 3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Confirmed by:  {0}", midcDetail.ConfirmedBy), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Approved by:  {0}", midcDetail.ApprovedBy), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Audited by:  {0}", ""), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 10F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            e.Y = y;
        }
        #endregion


        #region Print Sample Order Listing
        public static void PrintSampleOrder1(SampleOrder sampleOrder)
        {

            midcSampleOrder = sampleOrder;

            List<SampleOrder> samples = new List<SampleOrder>();
            samples.Add(sampleOrder);
            BindingSource bs = new BindingSource();
            bs.DataSource = samples;

            PHReport report = new PHReport();
            //report.ReportTitle = "MATERIAL SAMPLE ORDER LISTING";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(50, 50, 50, 50);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            report.DataSource = bs;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_SampleOrder);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_SampleOrder);
            report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_SampleOrder);
            report.CreateReport();
            report.ShowPreviewDialog();
            //report.Report.ShowDesigner();


            // Create a design panel.
            //DevExpress.XtraReports.UserDesigner.XRDesignPanel xrDesignPanel = new DevExpress.XtraReports.UserDesigner.XRDesignPanel();

            //// Set its size.
            //xrDesignPanel.Size = new Size(600, 300);

            //// Set its location.
            //xrDesignPanel.Location = new Point(20, 10);

            //// Open the report in the panel.
            //xrDesignPanel.OpenReport(report.Report);

            //System.ComponentModel.Design.IDesignerHost host = (System.ComponentModel.Design.IDesignerHost)panel.GetService(typeof(System.ComponentModel.Design.IDesignerHost));

        }
        public static void PrintSampleOrder(List<SampleOrder> samples)
        {
            if (samples.Count > 0)
                midcSampleOrder = samples[0];
            else return;

            // List<SampleOrder> samples = new List<SampleOrder>();
            // samples.Add(sampleOrder);
            BindingSource bs = new BindingSource();
            bs.DataSource = samples;

            PHReport report = new PHReport();
            //report.ReportTitle = "MATERIAL SAMPLE ORDER LISTING";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(50, 50, 50, 50);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            report.DataSource = bs;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_SampleOrder);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_SampleOrder);
            report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_SampleOrder);
            report.CreateReport();
            report.ShowPreviewDialog();
            //report.Report.ShowDesigner();


            // Create a design panel.
            //DevExpress.XtraReports.UserDesigner.XRDesignPanel xrDesignPanel = new DevExpress.XtraReports.UserDesigner.XRDesignPanel();

            //// Set its size.
            //xrDesignPanel.Size = new Size(600, 300);

            //// Set its location.
            //xrDesignPanel.Location = new Point(20, 10);

            //// Open the report in the panel.
            //xrDesignPanel.OpenReport(report.Report);

            //System.ComponentModel.Design.IDesignerHost host = (System.ComponentModel.Design.IDesignerHost)panel.GetService(typeof(System.ComponentModel.Design.IDesignerHost));

        }
        static void report_PageHeaderBandCreating_SampleOrder(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 45;
            aWidth = iClientPageWidth - 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MATERIAL SAMPLE ORDER LISTING", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 14F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;
            e.Y = y;

        }
        static void report_DetailBandCreating_SampleOrder(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aHeight2 = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;

            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;

            int y0 = y;
            aHeight = 12;
            aHeight2 = aHeight * 2;
            #endregion

            #region XRControlStyle

            XRControlStyle lbDetailStyle = new XRControlStyle();
            lbDetailStyle.Font = new Font(PHReport.DefaultFontFamily, 8F, FontStyle.Bold);
            lbDetailStyle.Borders = BorderSide.None;
            lbDetailStyle.TextAlignment = TextAlignment.MiddleLeft;

            lbDetailStyle.StyleUsing.UseBorders = true;
            lbDetailStyle.StyleUsing.UseTextAlignment = true;
            lbDetailStyle.StyleUsing.UseFont = true;

            lbDetailStyle.StyleUsing.UseForeColor = false;
            lbDetailStyle.StyleUsing.UseBorderWidth = false;
            lbDetailStyle.StyleUsing.UseBorderColor = false;
            lbDetailStyle.StyleUsing.UseBackColor = false;
            lbDetailStyle.StyleUsing.UsePadding = false;

            e.Report.StyleSheet.Add(lbDetailStyle);

            #endregion

            #region Detail Band
            #region --1--
            int width1 = 100;
            int width2 = 290;// 300;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Dvp Proj No.:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Supplier", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            aHeight = 24;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SupplierName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.TopLeft);
            xrLabel.WordWrap = true;
            x += aWidth;
            y += aHeight;

            aHeight = 12;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Created Date:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CreateDate", "{0:yyyy'/'MM'/'dd}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            //for (int i = 0; i < 2; i++)
            //{
            //    x = 0;
            //    aWidth = width1;
            //    xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            //    x += aWidth;
            //    aWidth = width2;
            //    xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            //    x += aWidth;
            //    y += aHeight;
            //}
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Incoterms:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DeliveryTerm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Transit Mode:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipMode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            //x = 0;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;
            //y += aHeight;

            int x1 = x;
            int y1 = y;
            #endregion
            #region --2--
            width1 = 120;
            width2 = 160;
            y = y0;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Beneficiary:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Beneficiary", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Agent:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Agent", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Origin", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Country", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Port of Disccharge:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DiscchargePort", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Currency:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Currency", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Exchange Rate(STD):", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MidcCurrency.StdSellRate", "   {0:0.0000}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Exchange Rate(CUR):", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MidcCurrency.CurrSellRate", "   {0:0.0000}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            x = x1;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Payment Term:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PaymentTerm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            y += aHeight;

            //x = x1;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;
            y += aHeight;

            int x2 = x;
            int y2 = y;
            #endregion
            #region --3--
            width1 = 90;
            width2 = 70;
            y = y0;

            PaddingInfo pi = new PaddingInfo(2, 10, 0, 0);
            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Standard Dev:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StandardDev", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Est Interest:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "EstInterest", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "  BankCharge:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BankCharge", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "  StockInterest:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StockInterest", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SubCharge:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SubCharge", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            pi = new PaddingInfo(28, 2, 0, 0);
            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TimeFrame 1", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TimeFrame1", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TimeFrame 2", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TimeFrame2", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TimeFrame2", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleLeft);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight;

            int x3 = x;
            int y3 = y;
            #endregion
            #region --4--
            width1 = 155;// 90;
            width2 = 70;
            y = y0;

            pi = new PaddingInfo(2, 10, 0, 0);
            x = x3;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "The Transportation cost of\r\nPoint to Port of Origin", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleLeft, true, 6.5F);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Point2PortOfOriginCost", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight2;

            // pi = new PaddingInfo(32, 2, 0, 0);
            x = x3;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "The Freight cost of Port of\r\nboth Origin & Destination", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleLeft, true, 6.5F);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "FreightCost", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight2;

            x = x3;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "The Transportation cost of\r\nPort to Point of Destination", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleLeft, true, 6.5F);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Port2PointOfDestinationCost", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Top, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight2;


            x = x3;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "The Transportation cost of Point\r\nof Destination to Production Site", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleLeft, true, 6.5F);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PointOfDestination2ProductionSiteCost", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight2), BorderSide.Right | BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleRight);
            xrLabel.Padding = pi;
            x += aWidth;
            y += aHeight2;

            //x = x3;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Frieght:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Freight", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Right, TextAlignment.MiddleRight);
            //xrLabel.Padding = pi;
            //x += aWidth;
            //y += aHeight;

            //x = x3;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "  Air:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Frieght_Air", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            //xrLabel.Padding = pi;
            //x += aWidth;
            //y += aHeight;

            //x = x3;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "  Boat:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Frieght_Boat", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            //xrLabel.Padding = pi;
            //x += aWidth;
            //y += aHeight;

            //x = x3;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Additional Freight:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleLeft);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "AdditionalFrieght", "{0:0.00' %'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.MiddleRight);
            //xrLabel.Padding = pi;
            //x += aWidth;
            //y += aHeight;


            int x4 = x;
            int y4 = y;
            #endregion
            #endregion
            e.Y = y;//detail band

            #region Detail Report Band 0
            report_DetailReportBand0Creating_SampleOrder(sender, e);
            #endregion

        }
        static void report_DetailReportBand0Creating_SampleOrder(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;

            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;

            #endregion

            #region XRControlStyle

            XRControlStyle lbDetailStyle = new XRControlStyle();
            lbDetailStyle.Font = new Font(PHReport.DefaultFontFamily, 6.5F, FontStyle.Regular);
            lbDetailStyle.Borders = BorderSide.None;
            lbDetailStyle.TextAlignment = TextAlignment.MiddleLeft;

            lbDetailStyle.StyleUsing.UseBorders = true;
            lbDetailStyle.StyleUsing.UseTextAlignment = true;
            lbDetailStyle.StyleUsing.UseFont = true;

            lbDetailStyle.StyleUsing.UseForeColor = false;
            lbDetailStyle.StyleUsing.UseBorderWidth = false;
            lbDetailStyle.StyleUsing.UseBorderColor = false;
            lbDetailStyle.StyleUsing.UseBackColor = false;
            lbDetailStyle.StyleUsing.UsePadding = false;

            e.Report.StyleSheet.Add(lbDetailStyle);

            #endregion

            //---DetailBand0: sample order data
            //---DetailReportBand0: 
            //---------GroupHeaderBand1: MIDc title
            //---------DetailBand1: MIDc data
            //---------DetailReportBand1:
            //---------------DetailBand2: MIDc Materials (price , composition)
            //---ReportFooterBand0: 

            #region detailReportBand0
            DetailReportBand detailReportBand0 = new DetailReportBand();
            detailReportBand0.DataSource = e.Report.DataSource;

            detailReportBand0.DataMember = "Details";
            detailReportBand0.FilterString = "[Selected] = True";
            e.Report.Bands.Add(detailReportBand0);

            #region groupHeaderBand1
            GroupHeaderBand groupHeaderBand1 = new GroupHeaderBand();
            detailReportBand0.Bands.Add(groupHeaderBand1);
            groupHeaderBand1.RepeatEveryPage = true;
            e.ReportBand = groupHeaderBand1;


            y = 0;
            y += 8;
            aHeight = 25;

            #region --title--
            x = 0;
            aWidth = 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 170;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Gauge", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 120;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Special Label", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "U/M", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 90;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supp.Width", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight/SQM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min-Qty\r\nColor", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min-Qty\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Min-Qty\r\nPRODN", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "VAR ADJ", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Price(HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.BottomLeft, true);
            x += aWidth;

            y += aHeight;
            #endregion
            groupHeaderBand1.Height = y;
            #endregion

            #region detailBand1
            DetailBand detailBand1 = new DetailBand();
            detailReportBand0.Bands.Add(detailBand1);
            detailBand1.SortFields.Clear();
            detailBand1.SortFields.Add(new GroupField("CreateDate", DevExpress.XtraReports.UI.XRColumnSortOrder.Descending));

            e.ReportBand = detailBand1;

            y = 0;
            aHeight = 12;
            #region --midc main data--
            x = 0;
            aWidth = 100;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 170;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.SuppRef", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.Gauge", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 120;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.SpecialLabel", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.SupplierUOM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 90;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.SupplierWidthS1", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "[Details.SupplierWidth] MM [Details.SupplierWidthS]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.WeightGmSqm", "{0:0.00}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.MinColor", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.MinOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.MinStartProduct", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.ValueAdjustTotal", "{0:0.00}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.AllInPrice", "{0:0.0000}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.BottomLeft, true);
            x += aWidth;
            y += aHeight;

            x = 0;
            aHeight = 1;
            aWidth = iClientPageWidth;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, aHeight, DashStyle.Dot, LineDirection.Horizontal);
            y += aHeight;


            detailBand1.Height = y;
            #endregion

            #endregion

            #region detailReportBand1
            DetailReportBand detailReportBand1 = new DetailReportBand();
            detailReportBand1.DataSource = e.Report.DataSource;
            detailReportBand1.DataMember = "Details.PrintDetails";
            detailReportBand0.Bands.Add(detailReportBand1);

            #region detailBand2
            DetailBand detailBand2 = new DetailBand();
            detailReportBand1.Bands.Add(detailBand2);
            e.ReportBand = detailBand2;

            y = 0;
            aHeight = 12;
            #region --midc print detail data--
            x = 100;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.RatioPriceStr", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.ColorCategory", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.PriceStr", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopRight, true);
            x += aWidth + 50;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.CompositionStr", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += aWidth;
            aWidth = 120;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.Composition", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.PerStr", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopRight, true);
            x += aWidth + 150;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.StatusLeadtimeDesc", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += aWidth;
            aWidth = 100;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.StatusLeadtime", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            x += 50;
            aWidth = 100;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Details.PrintDetails.LeadtimeDays", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true);
            xrLabel.SendToBack();
            x += aWidth;
            y += aHeight;
            detailBand2.Height = y;
            #endregion

            #endregion
            #endregion

            #endregion


        }
        static void report_ReportFooterBandCreating_SampleOrder(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int aWidth1 = iClientPageWidth / 2 - 50;
            int aWidth2 = iClientPageWidth - aWidth1;
            string preparedBy = "";
            string confirmedBy = "";
            if (midcSampleOrder.Details.Count > 0)
            {
                preparedBy = midcSampleOrder.Details[0].DataPreparedBy;
                confirmedBy = midcSampleOrder.Details[0].ConfirmedBy;
            }
            int ttl_art = 0;// midcSampleOrder.Details.Count;
            int ttl_run = 0;
            int ttl_study = 0;
            int ttl_color = 0;
            int ttl_qty = 0;
            foreach (PH.MIDc.BO.Detail d in midcSampleOrder.Details)
            {
                if (!d.Selected) continue;
                ttl_art++;
                if (d.Status != null && d.Status.ToUpper().StartsWith("RUN")) ttl_run++;
                else if (d.Status != null && d.Status.ToUpper().StartsWith("STUDY")) ttl_study++;
            }

            x = 0;
            aHeight = 3;
            aWidth = iClientPageWidth;
            PHReport.CreateLine(e.ReportBand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, aHeight);
            x += aWidth;
            y += (aHeight + 5);

            #region remarks
            x = 0;
            aWidth = aWidth1;
            aHeight = 12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "For Order below order min/color min.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remarks:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Underline);
            y += aHeight;

            x = 0;
            aWidth = aWidth1;
            aHeight = 12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "For ShipMode changing from sea to air.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SupplierProfile.Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true, PHReport.DefaultFontSize, PHReport.DefaultFontFamily);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            y += aHeight;

            int y0 = y;
            #endregion

            #region --1--
            aWidth1 = 100;
            y = y0;
            x = 0;
            aHeight = 12 * 4;

            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Prepared by:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;
            x = 0;
            aHeight = 12;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, preparedBy, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            int x1 = x;
            int y1 = y;
            #endregion
            #region --2--
            aWidth1 = 100;
            y = y0;
            x = x1;
            aHeight = 12 * 4;

            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Confirmed by:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;
            x = x1;
            aHeight = 12;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, confirmedBy, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            int x2 = x;
            int y2 = y;
            #endregion
            #region --3--
            aWidth1 = 150;
            aWidth2 = 50;
            y = y0;
            aHeight = 12;

            x = x2;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TTL ARTICLE:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, ttl_art, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Top, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TTL ARTICLE ON RUN:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, ttl_run, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TTL ARTICLE ON STUDY:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, ttl_study, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TTL COLOR:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, ttl_color, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            x = x2;
            aWidth = aWidth1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TTL QTY:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            aWidth = aWidth2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, ttl_qty, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Bottom, TextAlignment.TopLeft);
            xrLabel.AnchorVertical = VerticalAnchorStyles.Top;
            x += aWidth;
            y += aHeight;

            int x3 = x;
            int y3 = y;
            #endregion

            e.Y = y;
        }

        #endregion

        #region Print Material Listing
        public static void PrintMaterialListing(List<PH.MIDc.BO.Detail> details)
        {
            BindingSource bs = new BindingSource();
            bs.DataSource = details;

            PHReport report = new PHReport();
            //report.ReportTitle = "MATERIAL LISTING";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = false;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            report.DataSource = bs;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_MaterialListing);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_MaterialListing);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_MaterialListing);
            report.CreateReport();
            report.ShowPreviewDialog();//zrtag
            //report.Report.ShowDesigner();


            // Create a design panel.
            //DevExpress.XtraReports.UserDesigner.XRDesignPanel xrDesignPanel = new DevExpress.XtraReports.UserDesigner.XRDesignPanel();

            //// Set its size.
            //xrDesignPanel.Size = new Size(600, 300);

            //// Set its location.
            //xrDesignPanel.Location = new Point(20, 10);

            //// Open the report in the panel.
            //xrDesignPanel.OpenReport(report.Report);

            //System.ComponentModel.Design.IDesignerHost host = (System.ComponentModel.Design.IDesignerHost)panel.GetService(typeof(System.ComponentModel.Design.IDesignerHost));

        }
        static void report_PageHeaderBandCreating_MaterialListing(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            float fsize = 7.5F;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 45;
            aWidth = iClientPageWidth - 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MATERIAL LISTING", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 38;
            x = 0;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Mat.\r\nGRP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Mat.\r\nTYPE", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 130;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier Ref.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Material Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "All in\r\nPrice", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleRight, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nu/m", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Supp\r\nu/m", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RLX.\r\nBFR.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleRight, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WAST.\r\nALLOW.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleRight, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            y += aHeight;

            e.Y = y;

        }
        static void report_DetailBandCreating_MaterialListing(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            //float fsize = 7.5F;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 15;
            x = 0;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MaterialGroup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MaterialType", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 130;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SuppRef", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MaterialCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Supplier", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "AllInPrice", "{0:0.0000}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHUnit", " / {0}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SupplierUOM", " {0}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Relaxtion", "{0:0.00'%'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WastageOnCAC", "{0:0.00'%'}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            x += aWidth;
            aWidth = 100;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;

            y += aHeight;


            e.Y = y;

        }
        static void report_ReportFooterBandCreating_MaterialListing(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            y += 5;
            x = 0;
            aHeight = 30;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "P.S:-", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, false, 12F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            string str = "1. Price surcharge from supplier for ship mode changing from sea to air is partly or wholly covered by \"additional freight cost\".";
            str += "\r\n2. Usable width is count without selvedge and pin holes.";
            str += "\r\n3. Relaxation buffer of width should be covered by the usable width.";
            str += "\r\n4. Yield measure is based on marker width,PH standard u/m + relaxation buffer & wastage allowance.";
            str += "\r\n5. Band lace scallop matching buffer during spreading process is covered by the relaxation buffer also.";
            str += "\r\n6. All in price is base on PH u/m & supplier width,without the cost caused by the relaxation buffer and wastage allowance.";
            str += " \r\n";
            aHeight = 15;
            aWidth = iClientPageWidth - 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, str, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.TopLeft, true, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Italic);
            xrLabel.WordWrap = true;
            xrLabel.CanGrow = true;
            y += 30;

            e.Y = y;
        }

        #endregion

        #region Print ConvertWidth Listing
        public static void PrintConvertWidthListing(List<PH.MIDc.BO.Detail> details)
        {
            BindingSource bs = new BindingSource();
            bs.DataSource = details;

            PHReport report = new PHReport();
            //report.ReportTitle = "MATERIAL LISTING";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = false;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = true;
            report.DataSource = bs;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_ConvertWidth);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_ConvertWidth);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_MaterialListing);
            report.CreateReport();
            report.ShowPreviewDialog();
            //report.Report.ShowDesigner();


            // Create a design panel.
            //DevExpress.XtraReports.UserDesigner.XRDesignPanel xrDesignPanel = new DevExpress.XtraReports.UserDesigner.XRDesignPanel();

            //// Set its size.
            //xrDesignPanel.Size = new Size(600, 300);

            //// Set its location.
            //xrDesignPanel.Location = new Point(20, 10);

            //// Open the report in the panel.
            //xrDesignPanel.OpenReport(report.Report);

            //System.ComponentModel.Design.IDesignerHost host = (System.ComponentModel.Design.IDesignerHost)panel.GetService(typeof(System.ComponentModel.Design.IDesignerHost));

        }
        static void report_PageHeaderBandCreating_ConvertWidth(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            float fsize = 7.5F;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 45;
            aWidth = iClientPageWidth - 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Convert Width LISTING", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            aHeight = 38;
            x = 0;
            aWidth = 100;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 150;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SupplierReference", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MarkerWidth", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SupplierWidth", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "UsableWidth", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleLeft, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TubularWidth", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Left, TextAlignment.MiddleRight, true, fsize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            y += aHeight;

            e.Y = y;

        }
        static void report_DetailBandCreating_ConvertWidth(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            //float fsize = 7.5F;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            x = 0;
            aHeight = 15;
            x = 0;
            aWidth = 100;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 150;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SuppRef", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MarkerWidthS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SupplierWidthS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "UsableWidthS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = 80;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TubularWidthS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;
            aWidth = 80;

            y += aHeight;


            e.Y = y;

        }

        #endregion

    }

}
