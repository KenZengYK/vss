using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC1.BO;
using DevExpress.XtraTab;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using PH.Common.Report;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Drawing.Drawing2D;

namespace PH.SPC1.UI
{
    public static class SPCPrintHelper
    {
        static float _fontSize4 = 4F;
        static float _fontSize5 = 5F;
        static float _fontSize6 = 5F;

        #region Print LARD

        public static void PrintLARD(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintLARD);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintLARD);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintLARD(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - LARD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintLARD(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        //static void OnBeforePrint_DetailBandPrintLARD(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    Band band = sender as Band;

        //    foreach (XRControl c in band.Controls)
        //    {
        //        XRLabel lb = c as XRLabel;
        //        if (lb == null) return;
        //        System.Object obj = lb.Tag;
        //        if (obj == null) return;
        //        XRBinding banding = lb.DataBindings["Text"];
        //        if (banding == null) return;

        //        System.String dataMember = banding.DataMember;
        //        System.DateTime dt = (System.DateTime)band.RootReport.GetCurrentColumnValue(dataMember);
        //        lb.Text = (dt == System.DateTime.MinValue) ? "" : dt.ToString("yy/MM/dd");
        //    }
        //}
        //private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    DetailBand band = sender as DetailBand;
        //    foreach (XRControl c in band.Controls)
        //    {
        //        XRLabel lb = (XRLabel)c;
        //        if (lb == null) continue;

        //        System.String dataMember = lb.Tag.ToString();
        //        if (string.IsNullOrEmpty(dataMember)) continue;

        //        System.DateTime dt = (System.DateTime)GetCurrentColumnValue(dataMember);
        //        lb.Text = (dt == System.DateTime.MinValue) ? "" : dt.ToString("yy/M/d");
        //    }
        //}
        #endregion
        #region Print ETAM

        public static void PrintETAM(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintETAM);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintETAM);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ETAMReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintETAM(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - ETAM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Confirmed(Fitting)
            int x4 = x;
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nPlastic\r\nShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x7 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Confirmed(Fitting)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Confirmed(Other)
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion


            aHeight = 18;
            y = y1;
            x = x7;
            aWidth = x9 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Confirmed(Other)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x9;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintETAM(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //xrLabel.Tag = "DvpTrialCommDate";
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Confirmed(Fitting)
            int x4 = x;
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DPlasticShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print ANFF(SALL)

        public static void PrintANFF(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintANFF);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintANFF);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintANFF(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - SALL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 24;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region CG

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CG", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre - Production
            int x4 = x;
            #region Sample Package

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "OS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SK", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DSP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GR", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GW", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSW", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FTP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WC/MC", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Package", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Photo

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Photo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region WT

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Size Set

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Size Set", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PP

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nPlastic\r\nShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x10 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre - Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production

            aHeight = 18 * 3;
            y = y2;
            x = x10;

            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TOP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MTL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y1;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintANFF(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 24;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region DVP Status
            #region CG

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CGSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion
            #endregion
            #region Pre - Production
            #region Sample Package

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPPT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSK", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPDSP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPMP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPGR", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPGW", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSSW", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPCD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPFTP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPWCMC", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #region Photo

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PhotoSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PhotoIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PhotoIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PhotoDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PhotoDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PhotoCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PhotoCurrentDate";
            x += aWidth;

            #endregion
            #region WT

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WTSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTCurrentDate";
            x += aWidth;
            #endregion
            #region Size Set

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PP

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PPIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PPDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PPCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PPApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHPlasticShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #endregion
            #region Production

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ComponentBoardSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ColorSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TopSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MTLWashingSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print CMYR

        public static void PrintCMYR(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintCMYR);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintCMYR);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintCMYR(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - CMYR", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion
            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\ncomm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x2;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x3 = x;

            aHeight = 18;
            y = y2;
            x = x2;
            aWidth = x3 - x2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region COD

            aHeight = 18 * 3;
            y = y2;
            x = x3;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "COD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x4 = x;
            #endregion
            #region ERP BOM
            aHeight = 18 * 3;
            y = y2;
            x = x4;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x5 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x5 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Pre-Production
            int x6 = x;
            #region QA Sample

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QA Sample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Size Set Sample Status

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Size Set Sample Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region WT

            aHeight = 18 * 3;
            y = y2;
            x = x8;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x9 = x;
            #endregion
            #region PH
            aHeight = 18 * 3;
            y = y2;
            x = x9;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x10 = x;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x5;
            aWidth = x10 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Production
            #region WS
            aHeight = 18 * 3;
            y = y2;
            x = x10;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x11 = x;
            #endregion
            #region SH
            aHeight = 18 * 3;
            y = y2;
            x = x11;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x12 = x;
            #endregion
            #region CMS
            aHeight = 18 * 3;
            y = y2;
            x = x12;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x13 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x10;
            aWidth = x13 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x13;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintCMYR(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialComment", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialComment";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationNo";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region COD
            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ConfirmOrderDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion
            #region Pre-Production
            #region QA Sample

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "FSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "FSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "FSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "FSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            xrLabel.Tag = "FSApproveDate";
            x += aWidth;

            #endregion
            #region Size Set Sample Status

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SSSSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SSSSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SSSSTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SSSSGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SSSSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SSSSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            xrLabel.Tag = "SSSSApproveDate";
            x += aWidth;


            #endregion
            #region WT

            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WearerTestSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region PH

            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PlasticShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #endregion
            #region Production
            #region WS

            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WashingSampe", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #endregion
            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print HBI(SARA)

        public static void PrintHBI(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintHBI);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintHBI);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintHBI(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - HBI", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 24;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 18;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "cust", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 28;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion
            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            //aWidth = 25;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\ncomm", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;

            int x01 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x01 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            #region CG

            aHeight = 18 * 2;
            y = y3;
            x = x01;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x01;
            aWidth = x1 - x01;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CG", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Pre - Production
            int x4 = x;
            #region Sample Package

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "OS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "BOM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SMT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WBP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "LP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Package", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region QA

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QA", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region WT

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region MW

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MW", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CBS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region MS

            aHeight = 18 * 3;
            y = y2;
            x = x10;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            #endregion
            #region PH

            aHeight = 18 * 3;
            y = y2;
            x = x11;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x12 = x;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x12 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre - Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Production

            aHeight = 18 * 3;
            y = y2;
            x = x12;

            aWidth = 22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPA", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CTL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CRP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x13 = x;

            aHeight = 18;
            y = y1;
            x = x12;
            aWidth = x13 - x12;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x13;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintHBI(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 24;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 38;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 18;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 28;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region DVP Status
            #region DVP

            //aWidth = 25;
            //xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //xrLabel.Tag = "DvpIssueDate";
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialComment", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialComment";
            x += aWidth;
            aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //xrLabel.Tag = "DvpDefaultDate";
            //x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //xrLabel.Tag = "DvpCurrentDate";
            //x += aWidth;

            #endregion
            
            #region CG

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CGSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion
            #endregion
            #region Pre - Production
            #region Sample Package

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPPT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPBOM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPDSD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSMT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPWBP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPLP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #region QA

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QASos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QAIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "QAIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QADefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "QADefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QACurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "QACurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QAApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "QAApproveDate";
            x += aWidth;

            #endregion
            #region WT

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WTSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTApproveDate";
            x += aWidth;
            #endregion
            #region SS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "SSApproveDate";
            x += aWidth;
            #endregion
            #region MW

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MWSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MWIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "MWIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MWDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "MWDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "MWCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "MWCurrentDate";
            x += aWidth;

            #endregion
            #region CBS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CBSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CBSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CBSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CBSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CBSApproveDate";
            x += aWidth;
            #endregion
            #region MS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "MS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #region PH

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PlasticShot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #endregion
            #region Production

            aWidth = 22;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPA", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CTL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 22;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CRP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print TAMA

        public static void PrintTAMA(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintTAMA);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintTAMA);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintTAMA(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - TAMA", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 24;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 55;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion
            #region DVP Status
            #region CG

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CG", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Pre - Production
            int x4 = x;
            #region Sample Package

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "OS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SMT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WC/MC", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Package", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region WT

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region C/S+GS

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "C/S+GS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region DGS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DGS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PTS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 3;
            y = y2;
            x = x9;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x10 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre - Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Production

            aHeight = 18 * 3;
            y = y2;
            x = x10;

            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CBS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y1;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintTAMA(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 24;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 55;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region DVP Status
            #region CG

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CGSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CGCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CGCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion
            #endregion
            #region Pre - Production
            #region Sample Package

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPPT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPCL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPDSD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSMT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SPWCMC", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #region WT

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WTSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WTCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "WTCurrentDate";
            x += aWidth;

            #endregion
            #region CSGS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CSGSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CSGSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CSGSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CSGSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CSGSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CSGSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CSGSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CSGSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "CSGSApproveDate";
            x += aWidth;
            #endregion
            #region DGS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DGSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DGSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "DGSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DGSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "DGSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DGSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "DGSCurrentDate";
            x += aWidth;

            #endregion
            #region PTS

            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PTSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PTSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PTSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PTSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PTSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PTSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PTSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PTSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            xrLabel.Tag = "PTSApproveDate";
            x += aWidth;
            #endregion
            #region PH

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PlasticShot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion
            #endregion
            #region Production

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CBS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, true, _fontSize4);
            x += aWidth;

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print WARN

        public static void PrintWARN(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintWARN);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintWARN);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintWARN(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - WARN", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 30;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion
            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x2;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x3 = x;

            aHeight = 18;
            y = y2;
            x = x2;
            aWidth = x3 - x2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region COD

            aHeight = 18 * 3;
            y = y2;
            x = x3;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "COD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x4 = x;
            #endregion
            #region ERP BOM

            aHeight = 18 * 3;
            y = y2;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x5 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x5 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Pre-Production
            int x6 = x;
            #region Fit Sample

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Fit Sample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Size Set Sample Status

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Size Set Sample Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Pre-Production Sample

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production Sample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region GTS

            aHeight = 18 * 3;
            y = y2;
            x = x9;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;
            #endregion
            aHeight = 18;
            y = y1;
            x = x5;
            aWidth = x10 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Production

            aHeight = 18 * 3;
            y = y2;
            x = x10;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TOP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y1;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintWARN(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 30;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region DVP Status
            #region DVP

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationNo";
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region COD

            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ConfirmOrderDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ConfirmOrderDate";
            x += aWidth;
            #endregion
            #region ERP BOM

            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion
            #region Pre-Production
            #region Fit Sample

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "FSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSApproveDate";
            x += aWidth;

            #endregion
            #region Size Set Sample Status

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SSSSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSApproveDate";
            x += aWidth;

            #endregion
            #region Pre-Production Sample

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSApproveDate";
            x += aWidth;

            #endregion
            #region GTS

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "GarmentTestSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion

            #endregion
            #region Production

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WearerTestSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TOPSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion

        #region Print PH-DVP

        public static void PrintPHDVP(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintPHDVP);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintPHDVP);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintPHDVP(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - PH-DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nsample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\ncomment", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion


            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x4;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintPHDVP(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print MAST

        public static void PrintMAST(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintMAST);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintMAST);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ANFFReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintMAST(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - MAST", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 30;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion
            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x2;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x3 = x;

            aHeight = 18;
            y = y2;
            x = x2;
            aWidth = x3 - x2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region COD

            aHeight = 18 * 3;
            y = y2;
            x = x3;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "COD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x4 = x;
            #endregion
            #region ERP BOM

            aHeight = 18 * 3;
            y = y2;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x5 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x5 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Pre-Production
            int x6 = x;
            #region Fit Sample

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Fit Sample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Size Set Sample Status

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Size Set Sample Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Pre-Production Sample

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production Sample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region GTS

            aHeight = 18 * 3;
            y = y2;
            x = x9;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;
            #endregion
            aHeight = 18;
            y = y1;
            x = x5;
            aWidth = x10 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Production

            aHeight = 18 * 3;
            y = y2;
            x = x10;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "WT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TOP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y1;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion
            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintMAST(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 30;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region DVP Status
            #region DVP

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "QuotationNo";
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region COD

            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ConfirmOrderDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ConfirmOrderDate";
            x += aWidth;
            #endregion
            #region ERP BOM

            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion
            #region Pre-Production
            #region Fit Sample

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "FSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "FSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "FSApproveDate";
            x += aWidth;

            #endregion
            #region Size Set Sample Status

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SSSSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SSSSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "SSSSApproveDate";
            x += aWidth;

            #endregion
            #region Pre-Production Sample

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PPSSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPSApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            xrLabel.Tag = "PPSApproveDate";
            x += aWidth;

            #endregion
            #region GTS

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "GarmentTestSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion

            #endregion
            #region Production

            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "WearerTestSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "TOPSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;

            #endregion
            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize4);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion}

        #region Print CALD -->Same as ETAM

        public static void PrintCALD(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintCALD);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintCALD);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "ETAMReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintCALD(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - CALD", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 70;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment\r\n1st\r\nDel Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Confirmed(Fitting)
            int x4 = x;
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nPlastic\r\nShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            // int x8 = x;
            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x7 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Confirmed(Fitting)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Confirmed(Other)
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion


            aHeight = 18;
            y = y1;
            x = x7;
            aWidth = x9 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Confirmed(Other)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x9;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintCALD(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 70;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Garment1stDelDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "Garment1stDelDate";
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 40;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            //aWidth = widthDateTime;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            //xrLabel.Tag = "DvpTrialCommDate";
            //x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Confirmed(Fitting)
            int x4 = x;
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DPlasticShoot", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion

        #region Print DAXO -->Same as LARD

        public static void PrintDAXO(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintDAXO);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintDAXO);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintDAXO(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - DAXO", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintDAXO(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print EMPR

        public static void PrintEMPR(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintEMPR);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintEMPR);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintEMPR(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - EMPR", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintEMPR(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print TAIL

        public static void PrintTAIL(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintTAIL);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintTAIL);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintTAIL(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - TAIL", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintTAIL(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print MONO

        public static void PrintMONO(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintMONO);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintMONO);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintMONO(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - MONO", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintMONO(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion
        #region Print ESSE

        public static void PrintESSE(object dataSource)
        {
            PHReport report = new PHReport();
            report.pageKind = System.Drawing.Printing.PaperKind.A3;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = true;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            report.DataSource = dataSource;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintLARD);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintLARD);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_Print);
            //string reportFile = System.IO.Path.Combine(
            //   System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetCallingAssembly().Location),
            //   "LARDReport.repx");
            report.CreateReport();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        static void report_PageHeaderBandCreating_PrintESSE(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int y0 = y;
            x = 0;
            aHeight = 40;
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample Order Processing Control - ESSE", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;

            #region Header

            aHeight = 18;
            int y1 = y;
            int y2 = y1 + aHeight;
            int y3 = y2 + aHeight;
            int widthDateTime = 32;

            #region Style Information

            aHeight = 18 * 3;
            y = y2;
            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Sample\r\nOrder", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Project\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SO\r\nDelivery\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Cust.\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH\r\nStyle\r\nNo.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Brand\r\nName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Collec\r\ntion", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Season\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x0 = x;

            aHeight = 18;
            y = y1;
            x = 0;
            aWidth = x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Style Information", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;


            #endregion

            #region DVP Status
            #region DVP

            aHeight = 18 * 2;
            y = y3;
            x = x0;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Trial\r\nComm.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x1 = x;

            aHeight = 18;
            y = y2;
            x = x0;
            aWidth = x1 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region Quotation

            aHeight = 18 * 2;
            y = y3;
            x = x1;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x2 = x;

            aHeight = 18;
            y = y2;
            x = x1;
            aWidth = x2 - x1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Quotation", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region ERP BOM

            //aHeight = 18 * 2;
            //y = y3;
            //x = x2;
            //aWidth = 40;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "Complete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            //x += aWidth;


            aHeight = 18 * 3;
            y = y2;
            x = x2;
            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ERP\r\nBOM\r\nComplete\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            int x3 = x;
            #endregion

            aHeight = 18;
            y = y1;
            x = x0;
            aWidth = x3 - x0;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DVP Status", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Pre-Production
            #region IT

            aHeight = 18 * 2;
            y = y3;
            x = x3;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Initial\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x4 = x;

            aHeight = 18;
            y = y2;
            x = x3;
            aWidth = x4 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "IT", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region RVS

            aHeight = 18 * 2;
            y = y3;
            x = x4;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x5 = x;

            aHeight = 18;
            y = y2;
            x = x4;
            aWidth = x5 - x4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RVS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SS

            aHeight = 18 * 2;
            y = y3;
            x = x5;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "TS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "GS\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Appvd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x6 = x;

            aHeight = 18;
            y = y2;
            x = x5;
            aWidth = x6 - x5;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PH

            aHeight = 18 * 2;
            y = y3;
            x = x6;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "3D\r\nMaster\r\ncup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x7 = x;

            aHeight = 18;
            y = y2;
            x = x6;
            aWidth = x7 - x6;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region PS

            aHeight = 18 * 2;
            y = y3;
            x = x7;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SOS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Issue\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Color\r\nStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Default", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Current", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x8 = x;

            aHeight = 18;
            y = y2;
            x = x7;
            aWidth = x8 - x7;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x3;
            aWidth = x8 - x3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Production
            #region PPS

            aHeight = 18 * 2;
            y = y3;
            x = x8;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Pre-\r\nprod.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x9 = x;

            aHeight = 18;
            y = y2;
            x = x8;
            aWidth = x9 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PPS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region CMS

            aHeight = 18 * 2;
            y = y3;
            x = x9;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Custome \r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x10 = x;

            aHeight = 18;
            y = y2;
            x = x9;
            aWidth = x10 - x9;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "CMS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            #region SH

            aHeight = 18 * 2;
            y = y3;
            x = x10;
            aWidth = 35;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Shipment\r\nSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            int x11 = x;

            aHeight = 18;
            y = y2;
            x = x10;
            aWidth = x11 - x10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SH", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion

            aHeight = 18;
            y = y1;
            x = x8;
            aWidth = x11 - x8;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Production", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;

            #endregion

            #region Remark
            aHeight = 18 * 4;
            y = y1;
            x = x11;
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "Remark", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, true, _fontSize6);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

            #endregion

        }
        static void report_DetailBandCreating_PrintESSE(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            #region Scripts
            string scripts =
                   "private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)"
                   + "\r\n{"
                   + "\r\n DevExpress.XtraReports.UI.DetailBand band = sender as DevExpress.XtraReports.UI.DetailBand;"
                   + "\r\n DevExpress.XtraReports.UI.XRLabel lb;"
                   + "\r\n foreach (DevExpress.XtraReports.UI.XRControl c in band.Controls)"
                   + "\r\n{"
                   + "\r\n lb=c as DevExpress.XtraReports.UI.XRLabel;"
                   + "\r\n if (lb==null) continue;"
                   + "\r\n System.String dataMember=lb.Tag.ToString();"
                   + "\r\n if (string.IsNullOrEmpty(dataMember)) continue;"
                //+ "\r\n XRBinding banding = lb.DataBindings[\"Text\"];"
                //+ "\r\n if (banding==null) continue;"
                //+ "\r\n System.String dataMember=banding.DataMember;"
                   + "\r\n System.DateTime dt=Convert.ToDateTime(lb.Report.GetCurrentColumnValue(dataMember));"
                   + "\r\n lb.Text=(dt==System.DateTime.MinValue)?\"\":dt.ToString(\"yy/M/d\");"
                   + "\r\n}\r\n}";

            #endregion

            Band band = e.ReportBand;
            band.KeepTogether = true;
            band.Scripts.OnBeforePrint = scripts;
            //band.BeforePrint += new System.Drawing.Printing.PrintEventHandler(OnBeforePrint_DetailBandPrintLARD);

            int widthDateTime = 32;
            aHeight = 18;
            //StyleSpcLARD list;

            #region Style Information

            x = 0;
            aWidth = 60;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SampleOrderID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 50;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ProjectNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 25;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomerID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DueDate";
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PHStyleNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 45;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "StyleID", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "BrandName", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Collection", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 30;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SeasonCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #region DVP Status
            #region DVP

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "DvpSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrial", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrial";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpTrialCommDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpTrialCommDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "DvpCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "DvpCurrentDate";
            x += aWidth;

            #endregion
            #region Quotation

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "QuotationCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "QuotationCurrentDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationNo", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "QuotationTMU", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region ERP BOM

            aWidth = 38;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "ErpBomCompleteDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "ErpBomCompleteDate";
            x += aWidth;
            #endregion

            #endregion

            #region Pre-Production
            #region IT

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "InitialSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region RVS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "RvsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsTS", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsTS";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "RvsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "RvsApproveDate";
            x += aWidth;

            #endregion
            #region SS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "SsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsIssueDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsTsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsTsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsGsDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsGsDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsCurrentDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "SsApproveDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "SsApproveDate";
            x += aWidth;

            #endregion
            #region PH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Ph3DMasterCup", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region PS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsSos", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsIssueDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsIssueDate";
            x += aWidth;
            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PsColorStd", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsDefaultDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsDefaultDate";
            x += aWidth;
            aWidth = widthDateTime;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PsCurrentDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            xrLabel.Tag = "PsCurrentDate";
            x += aWidth;

            #endregion

            #endregion

            #region Production
            #region PPS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "PpsPreProductionSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region CMS

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "CustomeSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion
            #region SH

            aWidth = 35;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "ShipmentSample", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;

            #endregion

            #endregion

            #region Remark
            aWidth = iClientPageWidth - x;
            xrLabel = PHReport.CreateBindingLabel(e.ReportBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Top, TextAlignment.MiddleLeft, true, _fontSize5);
            x += aWidth;
            #endregion
            y += aHeight;
            e.Y = y;

        }
        #endregion

    }
}
