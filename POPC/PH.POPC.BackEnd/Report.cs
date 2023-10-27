using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using DevExpress.XtraReports;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;

namespace PH.POPC.BackEnd
{
    public class ReportHelper
    {
        public ReportHelper()
        { }

        #region Fields
        //private DataTable WorkDataTable;
        private object dtSumReport;
        private SummaryReportsType fSummaryType = SummaryReportsType.Customer;
        private bool fIsOutStanding;
        public bool IsOutStanding
        {
            get { return fIsOutStanding; }
            set { fIsOutStanding = value; }
        }
        private XtraReport report;
        #endregion

        #region share
        private XRLabel CreateHeaderLabel(Band headerBand, string text, Point location, Size size)
        { return CreateHeaderLabel(headerBand, text, location, size, BorderSide.All); }
        private XRLabel CreateHeaderLabel(Band headerBand, string text, Point location, Size size, BorderSide bs)
        {
            return CreateHeaderLabel(headerBand, text, location, size, bs, TextAlignment.MiddleLeft);
        }
        private XRLabel CreateHeaderLabel(Band headerBand, string text, Point location, Size size, BorderSide bs, TextAlignment align)
        {
            return CreateHeaderLabel(headerBand, text, location, size, bs, align, true);
        }
        private XRLabel CreateHeaderLabel(Band headerBand, string text, Point location, Size size, BorderSide bs, TextAlignment align, bool multiLine)
        {
            return CreateHeaderLabel(headerBand, text, location, size, bs, align, true, 7F);
        }
        private XRLabel CreateHeaderLabel(Band headerBand, string text, Point location, Size size, BorderSide bs, TextAlignment align, bool multiLine, float fontSize)
        {
            XRLabel xrLabel;
            xrLabel = new XRLabel();
            headerBand.Controls.Add(xrLabel);
            xrLabel.Location = location;
            xrLabel.Size = size;
            xrLabel.Text = text;
            xrLabel.Borders = bs;
            xrLabel.TextAlignment = align;
            xrLabel.Font = new System.Drawing.Font("Arial", fontSize, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.Multiline = multiLine;
            xrLabel.CanGrow = false;
            xrLabel.WordWrap = false;
            return xrLabel;
        }

        private XRPictureBox CreateHeaderPictureBox(Band headerBand, string filename, Point location, Size size, BorderSide bs)
        {
            XRPictureBox pic = new XRPictureBox();
            headerBand.Controls.Add(pic);
            pic.Location = location;
            pic.Size = size;
            pic.Sizing = ImageSizeMode.ZoomImage;
            pic.Borders = bs;

            if (!(filename == null || filename == "" || !System.IO.File.Exists(filename)))
                pic.ImageUrl = filename;

            return pic;
        }
        private void AddWinControlToReport(Control wrappedControl, Point location, Size controlSize, XtraReport areport, Band rfb)
        {
            if (rfb == null) return;
            // creating a WinControlContainer object
            WinControlContainer winControlContainer1 = new WinControlContainer();
            // setting its location and size
            winControlContainer1.Location = location;
            winControlContainer1.Size = controlSize;
            // set a wrappedControl as a wrapped object
            winControlContainer1.WinControl = wrappedControl;
            rfb.Controls.Add(winControlContainer1);
        }
        public XRPageInfo CreatePageInfo(Band headerBand, string format, Point location, Size size, BorderSide bs, TextAlignment align, PageInfo pageInfo)
        {
            XRPageInfo pi = new XRPageInfo();
            headerBand.Controls.Add(pi);
            pi.PageInfo = pageInfo;
            pi.Format = format;
            pi.Location = location;
            pi.Size = size;
            pi.Borders = bs;
            pi.TextAlignment = align;
            pi.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular);//Tahoma
            return pi;


            //DevExpress.XtraReports.UI.XtraReport rpt = new XtraReport();
            //DevExpress.XtraReports.UI.

        }

        #region BandingReportControl
        //private void BandingReportControl(string controlName, string fieldName)
        //{
        //    BandingReportControl(controlName, fieldName, "");
        //}
        //private void BandingReportControl(string controlName, string fieldName, string formatString)
        //{
        //    XRBinding banding = null;
        //    XRControl control = report.FindControl(controlName, false);
        //    if (control == null) return;

        //    if (formatString == null || formatString == "")
        //        banding = new XRBinding("Text", WorkDataTable, fieldName);
        //    else
        //        banding = new XRBinding("Text", WorkDataTable, fieldName, formatString);

        //    if (control is XRTableCell)
        //        ((XRTableCell)control).DataBindings.Add(banding);
        //    else if (control is XRLabel)
        //        ((XRLabel)control).DataBindings.Add(banding);
        //}
        #endregion

        #endregion

        #region ExternalA4,InternalA3,SumA3
        public XtraReport DoReportA3A4Print(object dataSource, PHReportA3A4 phReportA3A4)
        {
            this.dtSumReport = dataSource;
            report = new XtraReport();
            report.Landscape = true;

            report.PaperKind = (phReportA3A4 == PHReportA3A4.ExternalA4) ?
                System.Drawing.Printing.PaperKind.A4 : System.Drawing.Printing.PaperKind.A3;
            report.ReportUnit = ReportUnit.HundredthsOfAnInch;
            report.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);

            DevExpress.XtraReports.UI.PageHeaderBand pHeaderBand = new PageHeaderBand();
            report.Bands.Add(pHeaderBand);
            DetailBand pDetailBand = new DetailBand();
            report.Bands.Add(pDetailBand);
            pDetailBand.KeepTogether = true;

            report.DataSource = dtSumReport;
            int xPos = CreateReportA3A4HeaderLabels(pHeaderBand, phReportA3A4);
            CreateReportA3A4DataLabels(pDetailBand, phReportA3A4);
            if (phReportA3A4 != PHReportA3A4.ExternalA4)
                CreateReportA3A4GroupLabels(report, xPos, phReportA3A4);

            return report;
        }
        private int CreateReportA3A4HeaderLabels(Band headerBand, PHReportA3A4 phReportA3A4)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            int iAmountX = 0;
            XRLabel xrLabel;
            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;

            int iInc;
            switch (phReportA3A4)
            {
                case PHReportA3A4.ExternalA4:
                    iInc = 0;
                    break;
                case PHReportA3A4.InternalA3:
                    iInc = 9;
                    break;
                case PHReportA3A4.SumA3:
                    iInc = 1;
                    break;
                default:
                    iInc = 0;
                    break;
            }

            #region report title
            //--1 row--
            aHeight = 46;
            aWidth = iClientPageWidth - 150;
            if (phReportA3A4 == PHReportA3A4.SumA3)
                xrLabel = CreateHeaderLabel(headerBand, "POPC Summary - Supplier  dependent", new Point(x, 0), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            else
                xrLabel = CreateHeaderLabel(headerBand, "POPC Control Panel", new Point(x, 0), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);

            xrLabel.Font = new System.Drawing.Font("Arial", 16F, System.Drawing.FontStyle.Regular);
            x += aWidth;

            //x = iClientPageWidth - 150;
            aHeight = 23;
            aWidth = 150;
            CreatePageInfo(headerBand, "Page {0} of {1}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.NumberOfTotal);
            y += aHeight;

            CreatePageInfo(headerBand, "Print Date: {0:yyyy'/'MM'/'dd}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.DateTime);
            y += aHeight;
            #endregion

            #region header title

            x = 0;
            aHeight = 40;

            aWidth = 28 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Supp\r\nCode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 40 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "PO No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Issued\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            x += aWidth;

            aWidth = 56 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Our\r\nProject#", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 60 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "End Cust\r\nStyle", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 60 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "End Cust\r\nOrder No.\r\n(if any)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "WO FW\r\nStart Date\r\n(default 1)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 54 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Our\r\nItem Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 100 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Supp Item Ref", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            x += aWidth;

            //------------10---------
            aWidth = 24 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Our Item\r\nColor Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 36 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Size", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;
            }

            aWidth = 40 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Supp Item\r\nColor Shade", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            x += aWidth;

            //========DIP submit status========
            aWidth = 45 + iInc + 35 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Lab DIP submit status", new Point(x, y), new Size(aWidth, 15), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter);

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Complete\r\nDate", new Point(x, y + 15), new Size(aWidth, aHeight - 15), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 35 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "App/Rej\r\nStatus", new Point(x, y + 15), new Size(aWidth, aHeight - 15), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false);
            x += aWidth;
            //================================>>

            //========Bulk submission status========
            aWidth = 45 + iInc + 35 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Bulk submission", new Point(x, y), new Size(aWidth, 15), BorderSide.Left | BorderSide.Top, TextAlignment.MiddleCenter);

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Complete\r\nDate", new Point(x, y + 15), new Size(aWidth, aHeight - 15), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 35 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "App/Rej\r\nStatus", new Point(x, y + 15), new Size(aWidth, aHeight - 15), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false);
            x += aWidth;
            //================================>>

            aWidth = 70 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "PO's Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 70 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "PO's\r\nOutstanding\r\nQty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            x += aWidth;

            aWidth = 28 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "PO's\r\nUnit", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            //-----------------20--------------
            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Total\r\nReceived Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Goods\r\nInwards\r\ndate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Shipment\r\ntolerance\r\n%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Out-\r\nstanding\r\n%", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;
            }

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Request\r\nShipment\r\ndate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "PO\r\nDelievery\r\ndate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(headerBand, "Create\r\nHDO Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            x += aWidth;

            if (phReportA3A4 != PHReportA3A4.ExternalA4)
            {
                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Transit\r\nmode", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                x += aWidth;

                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Unit\r\nprice", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Rate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;

                //------------------30--------------
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "PH bal\r\nAmount\r\n(HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                x += aWidth;

                iAmountX = x;

                aWidth = 34 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Team", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;
            }

            //if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Coordinator", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                x += aWidth;
            }

            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Our\r\nProdustion\r\nSite", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom | BorderSide.Right, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }

            if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 100 + iInc;
                xrLabel = CreateHeaderLabel(headerBand, "Remarks", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom | BorderSide.Right, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }

            y += aHeight;
            #endregion

            headerBand.Height = y;
            return iAmountX;
        }
        private void CreateReportA3A4GroupLabels(XtraReport report, int xPos, PHReportA3A4 phReportA3A4)
        {
            #region Value
            int iInc;
            float fontSize;
            switch (phReportA3A4)
            {
                case PHReportA3A4.ExternalA4:
                    fontSize = 6F;
                    iInc = 0;
                    break;
                case PHReportA3A4.InternalA3:
                    fontSize = 7F;
                    iInc = 9;
                    break;
                case PHReportA3A4.SumA3:
                    fontSize = 6F;
                    iInc = 1;
                    break;
                default:
                    fontSize = 7F;
                    iInc = 0;
                    break;
            }

            XRLabel xrLabel;
            int aWidth = 70 + iInc;
            int widthX = xPos - aWidth * 2;
            int aHeight = 20;
            int y = 2;
            #endregion

            if (phReportA3A4 == PHReportA3A4.InternalA3)
            {
                #region GroupHeaderBand
                GroupHeaderBand pGroupHeaderBand = new GroupHeaderBand();
                report.Bands.Add(pGroupHeaderBand);
                pGroupHeaderBand.GroupFields.Clear();
                pGroupHeaderBand.GroupFields.Add(new GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                pGroupHeaderBand.GroupFields.Add(new GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                pGroupHeaderBand.KeepTogether = true;
                pGroupHeaderBand.Height = 0;

                pGroupHeaderBand = new GroupHeaderBand();
                report.Bands.Add(pGroupHeaderBand);
                pGroupHeaderBand.GroupFields.Clear();
                pGroupHeaderBand.GroupFields.Add(new GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                pGroupHeaderBand.KeepTogether = true;
                pGroupHeaderBand.Height = 0;
                #endregion

                #region GroupFooterBand
                GroupFooterBand pGroupFooterBand = new GroupFooterBand();
                report.Bands.Add(pGroupFooterBand);
                pGroupFooterBand.KeepTogether = true;

                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format("ITEM TOTAL"), new Point(widthX, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
                xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);//Tahoma
                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format(""), new Point(widthX + aWidth, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
                xrLabel.Summary.Func = SummaryFunc.Sum;
                xrLabel.Summary.Running = SummaryRunning.Group;
                xrLabel.Summary.FormatString = "{0:#,0.00}";
                pGroupFooterBand.Height = 24;

                pGroupFooterBand = new GroupFooterBand();
                report.Bands.Add(pGroupFooterBand);
                pGroupFooterBand.KeepTogether = true;

                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format("PO TOTAL"), new Point(widthX, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
                xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);//Tahoma
                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format(""), new Point(widthX + aWidth, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
                xrLabel.Summary.Func = SummaryFunc.Sum;
                xrLabel.Summary.Running = SummaryRunning.Group;
                xrLabel.Summary.FormatString = "{0:#,0.00}";
                pGroupFooterBand.Height = 24;
                #endregion
            }
            else //if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                #region GroupHeaderBand
                GroupHeaderBand pGroupHeaderBand = new GroupHeaderBand();
                report.Bands.Add(pGroupHeaderBand);
                pGroupHeaderBand.GroupFields.Clear();
                pGroupHeaderBand.GroupFields.Add(new GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                pGroupHeaderBand.KeepTogether = true;
                pGroupHeaderBand.Height = 0;
                #endregion

                #region GroupFooterBand
                GroupFooterBand pGroupFooterBand = new GroupFooterBand();
                report.Bands.Add(pGroupFooterBand);
                pGroupFooterBand.KeepTogether = true;

                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format("PO TOTAL"), new Point(widthX, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
                xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);//Tahoma
                xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format(""), new Point(widthX + aWidth, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
                xrLabel.Summary.Func = SummaryFunc.Sum;
                xrLabel.Summary.Running = SummaryRunning.Group;
                xrLabel.Summary.FormatString = "{0:#,0.00}";
                pGroupFooterBand.Height = 24;
                #endregion
            }

            #region ReportFooterBand
            ReportFooterBand pReportFooterBand = new ReportFooterBand();
            report.Bands.Add(pReportFooterBand);
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format("ALL TOTAL"), new Point(widthX, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);//Tahoma
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format(""), new Point(widthX + aWidth, y), new Size(aWidth, aHeight), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true, fontSize);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Report;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            pReportFooterBand.Height = 24;
            #endregion
        }
        private void CreateReportA3A4DataLabels(Band detailBand, PHReportA3A4 phReportA3A4)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;
            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;

            int iInc;
            float fontSize;
            switch (phReportA3A4)
            {
                case PHReportA3A4.ExternalA4:
                    fontSize = 5.5F;
                    iInc = 0;
                    break;
                case PHReportA3A4.InternalA3:
                    fontSize = 7F;
                    iInc = 9;
                    break;
                case PHReportA3A4.SumA3:
                    fontSize = 6F;
                    iInc = 1;
                    break;
                default:
                    fontSize = 7F;
                    iInc = 0;
                    break;
            }

            #region banding data

            x = 0;
            aHeight = 18;

            aWidth = 28 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[Supplier]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            aWidth = 40 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[PONO]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[OrderDate!yyyy'/'MM'/'dd]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "podtStr", "{0:####/##/##}");
            x += aWidth;

            aWidth = 56 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ProjectNo]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 60 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[CustStyleNo]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;

                aWidth = 60 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[CustOrderNo]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;
            }

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[WOStartDate!yyyy'/'MM'/'dd]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "WOStartDate", "{0:yyyy'/'MM'/'dd}");
            x += aWidth;

            aWidth = 54 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ItemCode]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            aWidth = 100 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[SupplierReference]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            //------------10---------
            aWidth = 24 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ColorCode]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true, fontSize);
            x += aWidth;

            if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 36 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[DSIZ15]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;
            }

            aWidth = 40 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ColorShade]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            //========DIP submit status========
            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[Dip_Opdate]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            aWidth = 35 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[Dip_Status]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;
            //================================>>

            //========Bulk submission status========
            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[Bul_OpDate]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            aWidth = 35 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[Bul_Status]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;
            //================================>>

            aWidth = 70 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[SuppQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppQTY", "{0:#,0.000}");
            x += aWidth;

            aWidth = 70 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[SuppOSQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppOSQTY", "{0:#,0.000}");
            x += aWidth;

            aWidth = 28 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[SupplierUom]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true, fontSize);
            x += aWidth;

            //-----------------20--------------
            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[TotalReceivedQty]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "TotalReceivedQty", "{0:#,0.000}");
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[GoodsInwardsDate!yyyy'/'MM'/'dd]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Tolerance]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "Tolerance", "{0:#,0.00}");
                x += aWidth;

                aWidth = 45 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[OvershipPercent]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "OvershipPercent", "{0:#,0.00}");
                x += aWidth;
            }

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ShipmentDate!yyyy'/'MM'/'dd]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "Ddt", "{0:####/##/##}");
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[ConfirmETADate!yyyy'/'MM'/'dd]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "ConfirmETADate", "{0:yyyy'/'MM'/'dd}");
            x += aWidth;

            aWidth = 45 + iInc;
            xrLabel = CreateHeaderLabel(detailBand, "[HDOETA]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
            x += aWidth;

            if (phReportA3A4 != PHReportA3A4.ExternalA4)
            {
                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[ShipMode]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;

                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Price]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "px", "{0:#,0.000}");
                x += aWidth;

                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Rate]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "rate", "{0:#,0.0000}");
                x += aWidth;

                //------------------30--------------
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[AMount]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true, fontSize);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "amount", "{0:#,0.00}");
                x += aWidth;

                aWidth = 34 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Dept]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;
            }

            //if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 70 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[PurchaseOfficer]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;
            }

            if (phReportA3A4 == PHReportA3A4.SumA3)
            {
                aWidth = 40 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Factory]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true, fontSize);
                x += aWidth;
            }

            if (phReportA3A4 != PHReportA3A4.SumA3)
            {
                aWidth = 100 + iInc;
                xrLabel = CreateHeaderLabel(detailBand, "[Remark]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true, fontSize);
                x += aWidth;
            }
            y += aHeight;
            #endregion

            detailBand.Height = y;
        }
        #endregion

        #region ShipmentDetail
        public XtraReport DoShipmentDetailPrint(DataTable AWorkDataTable)
        {
            this.dtSumReport = AWorkDataTable;
            report = new XtraReport();
            report.Landscape = false;
            report.PaperKind = System.Drawing.Printing.PaperKind.A4;
            report.ReportUnit = ReportUnit.HundredthsOfAnInch;
            report.Margins = new System.Drawing.Printing.Margins(50, 50, 30, 30);

            DevExpress.XtraReports.UI.PageHeaderBand pHeaderBand = new PageHeaderBand();
            report.Bands.Add(pHeaderBand);
            DetailBand pDetailBand = new DetailBand();
            report.Bands.Add(pDetailBand);
            pDetailBand.KeepTogether = true;

            //DevExpress.XtraReports.UI.PageFooterBand pFooterBand = new PageFooterBand();
            //report.Bands.Add(pFooterBand);
            report.DataSource = dtSumReport;
            int xPos = CreateShipmentDetailHeaderLabels(pHeaderBand);
            CreateShipmentDetailLabels(pDetailBand);
            CreateShipmentDetailGroupLabels(report, xPos);

            return report;

        }
        private int CreateShipmentDetailHeaderLabels(Band headerBand)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            float font = 8F;
            XRLabel xrLabel;

            #region report title
            //--1 row--
            aHeight = 46;
            aWidth = 500;
            xrLabel = CreateHeaderLabel(headerBand, "Shipment Detail - PO, Item & SKU dependent", new Point(x, 0), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 16F, System.Drawing.FontStyle.Regular);
            x += aWidth;

            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;
            x = iClientPageWidth - 150;
            aWidth = 100;
            CreatePageInfo(headerBand, "Page {0} of {1}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.NumberOfTotal);

            #endregion

            y += aHeight;

            #region Header Information

            x = 0;
            aHeight = 23;
            aWidth = 100;
            xrLabel = CreateHeaderLabel(headerBand, "PONO:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth + 5;
            aWidth = 120;
            xrLabel = CreateHeaderLabel(headerBand, "[ORDN59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth;

            aWidth = 100;
            xrLabel = CreateHeaderLabel(headerBand, "Line:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth + 5;
            aWidth = 80;
            xrLabel = CreateHeaderLabel(headerBand, "[LINE59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth;

            aWidth = 100;
            xrLabel = CreateHeaderLabel(headerBand, "SKU:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth + 5;
            aWidth = 150;
            xrLabel = CreateHeaderLabel(headerBand, "[ITEM59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);
            x += aWidth;

            #endregion

            y += aHeight + 2;

            #region header title

            x = 0;
            aHeight = 30;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(headerBand, "DATE", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 120;
            xrLabel = CreateHeaderLabel(headerBand, "Advice Note\r\n(Supp. Delivery Note)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            int iAmountX = x;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(headerBand, "GRN", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 100;
            xrLabel = CreateHeaderLabel(headerBand, "Internal\r\nTrace No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 80;
            xrLabel = CreateHeaderLabel(headerBand, "QTY", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 40;
            xrLabel = CreateHeaderLabel(headerBand, "# of \r\nRoll", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 40;
            xrLabel = CreateHeaderLabel(headerBand, "UOM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(headerBand, "Record\r\nType", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 160;
            xrLabel = CreateHeaderLabel(headerBand, "Scrap Reason Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            y += aHeight;
            #endregion


            headerBand.Height = y;
            return iAmountX;
        }
        private void CreateShipmentDetailGroupLabels(XtraReport report, int xPos)
        {
            XRLabel xrLabel;
            GroupHeaderBand pGroupHeaderBand = new GroupHeaderBand();
            report.Bands.Add(pGroupHeaderBand);
            pGroupHeaderBand.GroupFields.Clear();

            //pGroupHeaderBand.GroupFields.Add(new GroupField("RECT09", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
            pGroupHeaderBand.GroupFields.Add(new GroupField("GRNO59", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
            //pGroupHeaderBand.GroupFields.Add(new GroupField("RECD09", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));

            //pGroupHeaderBand.PageBreak = PageBreak.BeforeBand;
            pGroupHeaderBand.KeepTogether = true;
            pGroupHeaderBand.Height = 0;

            GroupFooterBand pGroupFooterBand = new GroupFooterBand();
            report.Bands.Add(pGroupFooterBand);
            //xrLabel = CreateLabel(pGroupFooterBand, string.Format(""), new Point(0, 0), new Size(aWidth * 8, 2), BorderSide.Top, TextAlignment.MiddleCenter);
            int widthX = xPos;


            xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format("Sub TOTAL"), new Point(widthX, 2), new Size(100, 24), BorderSide.All, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);//Tahoma
            xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format(""), new Point(widthX + 100, 2), new Size(140, 24), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "TRNQ59", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            pGroupFooterBand.Height = 28;

            ReportFooterBand pReportFooterBand = new ReportFooterBand();
            report.Bands.Add(pReportFooterBand);
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format("Total:"), new Point(widthX, 2), new Size(100, 24), BorderSide.All, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);//Tahoma
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format(""), new Point(widthX + 100, 2), new Size(140, 24), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "TRNQ59", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Report;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            pReportFooterBand.Height = 28;


        }
        private void CreateShipmentDetailLabels(Band detailBand)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            float font = 7F;
            XRLabel xrLabel;

            #region Banding Data
            x = 0;
            aHeight = 23;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(detailBand, "[FDATE]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "FDATE", "{0:####/##/##}");
            xrLabel.ProcessDuplicates = ValueSuppressType.Suppress;
            x += aWidth;

            aWidth = 120;
            xrLabel = CreateHeaderLabel(detailBand, "[ADVN59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.ProcessDuplicates = ValueSuppressType.Suppress;
            x += aWidth;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(detailBand, "[GRNO59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.ProcessDuplicates = ValueSuppressType.Suppress;
            x += aWidth;

            aWidth = 100;
            xrLabel = CreateHeaderLabel(detailBand, "[TRIN59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 80;
            xrLabel = CreateHeaderLabel(detailBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "TRNQ59", "{0:#,0.00}");
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 40;
            xrLabel = CreateHeaderLabel(detailBand, "[ROLL]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "ROLL", "{0:N0}");
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 40;
            xrLabel = CreateHeaderLabel(detailBand, "[SUOM59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(detailBand, "[RECT59]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 160;
            xrLabel = CreateHeaderLabel(detailBand, "[DSCR12]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            xrLabel.Font = new System.Drawing.Font("Arial", font, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            y += aHeight;
            #endregion

            detailBand.Height = y;

        }
        #endregion

        #region Summary Report
        public XtraReport DoSummaryReport(DataTable dataSource, SummaryReportsType summaryType)
        {
            this.dtSumReport = dataSource;
            this.fSummaryType = summaryType;

            if (this.fSummaryType == SummaryReportsType.CustomerWeek || this.fSummaryType == SummaryReportsType.CustomerWeekColor)
                return DoSummaryReportOutstandingPrint();
            else
                return DoSummaryReportNormalPrint();
        }

        #region Normal report
        private XtraReport DoSummaryReportNormalPrint()
        {
            report = new XtraReport();
            report.Landscape = false;
            report.PaperKind = System.Drawing.Printing.PaperKind.A4;
            report.ReportUnit = ReportUnit.HundredthsOfAnInch;
            report.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);

            DevExpress.XtraReports.UI.PageHeaderBand pHeaderBand = new PageHeaderBand();
            report.Bands.Add(pHeaderBand);
            DetailBand pDetailBand = new DetailBand();
            report.Bands.Add(pDetailBand);
            pDetailBand.KeepTogether = true;

            //DevExpress.XtraReports.UI.PageFooterBand pFooterBand = new PageFooterBand();
            //report.Bands.Add(pFooterBand);
            report.DataSource = dtSumReport;
            int iWidth = CreateSummaryHeaderLabels(pHeaderBand);
            CreateSummaryDetailLabels(pDetailBand);
            CreateSummaryGroupLabels(iWidth);

            //report.CreateDocument();
            //report.PrintingSystem.PreviewFormEx.ShowInTaskbar = false;
            return report;

        }
        private int CreateSummaryHeaderLabels(Band headerBand)
        {
            string s1 = "";
            switch (fSummaryType)
            {
                case SummaryReportsType.Customer:
                    s1 = string.Format("Per Customer Code");
                    break;
                case SummaryReportsType.ItemCode:
                    s1 = string.Format("Per Item Code");
                    break;
                case SummaryReportsType.ItemCodeColor:
                    s1 = string.Format("Per Item Code and Color Code");
                    break;
                case SummaryReportsType.Week:
                    s1 = string.Format("Per Week");
                    break;
                case SummaryReportsType.Supplier:
                    s1 = string.Format("Per Supplier");
                    break;
                default:
                    break;
            }
            //int totalWidth = 1109;
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;

            #region Header
            //--1 row--
            aHeight = 46;
            aWidth = 400;
            xrLabel = CreateHeaderLabel(headerBand, "Summary Report", new Point(x, 0), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Tahoma", 14F, System.Drawing.FontStyle.Bold);
            x += aWidth;

            y += aHeight;

            x = 20;
            aHeight = 23;
            aWidth = 200;
            xrLabel = CreateHeaderLabel(headerBand, s1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            x += aWidth + 20;
            //aWidth = 200;
            //CreateHeaderLabel(headerBand, s2, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            //x += aWidth;

            //x = 600;
            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;
            x = iClientPageWidth - 150;
            aWidth = 100;
            CreatePageInfo(headerBand, "Page {0} of {1}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.NumberOfTotal);

            y += aHeight + 5;

            #region header title

            x = 0;
            aHeight = 30;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 60;
            xrLabel = CreateHeaderLabel(headerBand, "Total Nr.\r\nOf PO", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            if (fSummaryType == SummaryReportsType.Week || fSummaryType == SummaryReportsType.Supplier)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, (fSummaryType == SummaryReportsType.Week) ? "Total Nr.\r\nOf Project" : "Total Nr.\r\nOf Customer", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;

                aWidth = 80;
                xrLabel = CreateHeaderLabel(headerBand, "Total Nr.\r\nOf Item", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;

                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, "Total Nr.\r\nOf Color", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }
            else
            {
                aWidth = 60;
                xrLabel = CreateHeaderLabel(headerBand, "Customer", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;

                aWidth = 120;
                xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nReference", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;

                if (fSummaryType == SummaryReportsType.ItemCodeColor)
                {
                    aWidth = 46;
                    xrLabel = CreateHeaderLabel(headerBand, "Color", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
                    xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                    x += aWidth;
                }
            }
            if (fSummaryType != SummaryReportsType.Week)
            {
                aWidth = 80;
                xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nPO Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }
            aWidth = 90;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nOutstanding Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 50;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nUOM", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            if (fSummaryType == SummaryReportsType.Week)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, "Confirm ETD\r\nby Week", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }
            else if (fSummaryType != SummaryReportsType.Supplier)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, "Confirm ETD\r\nDate", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }
            aWidth = 90;
            xrLabel = CreateHeaderLabel(headerBand, "PH BAL\r\nAmount(HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;
            int iAmountX = x;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(headerBand, "Factory", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            y += aHeight;
            #endregion

            #endregion
            headerBand.Height = y;
            return iAmountX;
        }
        private void CreateSummaryGroupLabels(int iWidth)
        {
            XRLabel xrLabel;
            GroupHeaderBand pGroupHeaderBand = new GroupHeaderBand();
            report.Bands.Add(pGroupHeaderBand);
            pGroupHeaderBand.GroupFields.Clear();
            switch (this.fSummaryType)
            {
                case SummaryReportsType.Customer:
                    pGroupHeaderBand.GroupFields.Add(new GroupField("Customer", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    break;
                case SummaryReportsType.ItemCode:
                    pGroupHeaderBand.GroupFields.Add(new GroupField("VCAT03", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    break;
                case SummaryReportsType.ItemCodeColor:
                    pGroupHeaderBand.GroupFields.Add(new GroupField("VCAT03", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    pGroupHeaderBand.GroupFields.Add(new GroupField("Col", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    break;
                case SummaryReportsType.Week:
                    pGroupHeaderBand.GroupFields.Add(new GroupField("aYear", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    pGroupHeaderBand.GroupFields.Add(new GroupField("aWeek", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    break;
                case SummaryReportsType.Supplier:
                    pGroupHeaderBand.GroupFields.Add(new GroupField("Supp", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
                    break;
                default:
                    break;
            }
            //pGroupHeaderBand.PageBreak = PageBreak.BeforeBand;
            pGroupHeaderBand.KeepTogether = true;
            pGroupHeaderBand.Height = 0;

            GroupFooterBand pGroupFooterBand = new GroupFooterBand();
            report.Bands.Add(pGroupFooterBand);
            //xrLabel = CreateLabel(pGroupFooterBand, string.Format(""), new Point(0, 0), new Size(aWidth * 8, 2), BorderSide.Top, TextAlignment.MiddleCenter);
            int widthX = iWidth - 160;
            //string str ;
            //switch (this.fSummaryType)
            //{
            //    case SummaryReports.Customer:
            //        str = "[Customer]";
            //        break;
            //    case SummaryReports.ItemCode:
            //        str = "[VCAT03]";
            //        break;
            //    case SummaryReports.ItemCodeColor:
            //        str = "[VCAT03],[Col]";
            //        break;
            //    case SummaryReports.Week:
            //        str = "[aYear] week [aWeek]";
            //        break;
            //    case SummaryReports.Supplier:
            //        str = "[Supp]";
            //        break;
            //    default:
            //        break;
            //}

            xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format("Sub total:"), new Point(widthX, 2), new Size(70, 18), BorderSide.All, TextAlignment.MiddleCenter);
            xrLabel = CreateHeaderLabel(pGroupFooterBand, string.Format(""), new Point(widthX + 70, 2), new Size(90, 18), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            pGroupFooterBand.Height = 22;

            ReportFooterBand pReportFooterBand = new ReportFooterBand();
            report.Bands.Add(pReportFooterBand);
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format("Total:"), new Point(widthX, 2), new Size(70, 18), BorderSide.All, TextAlignment.MiddleCenter);
            xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format(""), new Point(widthX + 70, 2), new Size(90, 18), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Report;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            pReportFooterBand.Height = 22;


        }
        private void CreateSummaryDetailLabels(Band detailBand)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;

            //xrLabel.DataBindings.Add("Text", _ReportTable, "Salary2", "{0:#,0.00}");
            #region Data
            x = 0;
            aHeight = 18;

            aWidth = 46;
            CreateHeaderLabel(detailBand, "[Supp]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 60;
            CreateHeaderLabel(detailBand, "[poNr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;

            if (fSummaryType == SummaryReportsType.Week || fSummaryType == SummaryReportsType.Supplier)
            {
                aWidth = 70;
                CreateHeaderLabel(detailBand, (fSummaryType == SummaryReportsType.Week) ? "[JobnoNr]" : "[CustomerNr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 80;
                CreateHeaderLabel(detailBand, "[VCAT03Nr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                x += aWidth;

                aWidth = 70;
                CreateHeaderLabel(detailBand, "[ColorNr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }
            else
            {
                aWidth = 60;
                CreateHeaderLabel(detailBand, "[Customer]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
                x += aWidth;

                aWidth = 120;
                CreateHeaderLabel(detailBand, "[VCAT03]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
                x += aWidth;

                if (fSummaryType == SummaryReportsType.ItemCodeColor)
                {
                    aWidth = 46;
                    CreateHeaderLabel(detailBand, "[Col]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
                    x += aWidth;
                }
            }
            if (fSummaryType != SummaryReportsType.Week)
            {
                aWidth = 80;
                xrLabel = CreateHeaderLabel(detailBand, "[SuppQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppQTY", "{0:#,0}");
                x += aWidth;
            }

            aWidth = 90;
            xrLabel = CreateHeaderLabel(detailBand, "[SuppOSQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppOSQTY", "{0:#,0}");
            x += aWidth;

            aWidth = 50;
            CreateHeaderLabel(detailBand, "[Unit]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
            x += aWidth;

            if (fSummaryType == SummaryReportsType.Week)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(detailBand, "[aYear] week [aWeek]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                //xrLabel.DataBindings.Add("Text", this.dtSumReport, "CFDMETD", "{0:yyyy'-'MM'-'dd}");
                x += aWidth;
            }
            else if (fSummaryType != SummaryReportsType.Supplier)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(detailBand, "[CFDMETD]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                xrLabel.DataBindings.Add("Text", this.dtSumReport, "CFDMETD", "{0:yyyy'-'MM'-'dd}");
                x += aWidth;
            }
            aWidth = 90;
            xrLabel = CreateHeaderLabel(detailBand, "[AMount]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            x += aWidth;

            aWidth = 46;
            CreateHeaderLabel(detailBand, "[Factory]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
            x += aWidth;

            y += aHeight;
            #endregion


            detailBand.Height = y;

        }
        #endregion

        #region Outstanding report
        private XtraReport DoSummaryReportOutstandingPrint()
        {
            report = new XtraReport();
            report.Landscape = false;
            report.PaperKind = System.Drawing.Printing.PaperKind.A4;
            report.ReportUnit = ReportUnit.HundredthsOfAnInch;
            report.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.DataSource = this.dtSumReport;

            DevExpress.XtraReports.UI.PageHeaderBand pHeaderBand = new PageHeaderBand();
            report.Bands.Add(pHeaderBand);
            DetailBand pDetailBand = new DetailBand();
            report.Bands.Add(pDetailBand);
            pDetailBand.KeepTogether = true;

            int iWidth = CreateSummaryHeaderLabels_OS(pHeaderBand);
            CreateSummaryDetailLabels_OS(pDetailBand);
            CreateSummaryGroupLabels_OS(report, iWidth);

            //report.CreateDocument();
            //report.PrintingSystem.PreviewFormEx.ShowInTaskbar = false;
            return report;

        }
        private int CreateSummaryHeaderLabels_OS(Band headerBand)
        {
            string s1 = "";

            s1 = string.Format("Per Customer and Week{0}", (this.fSummaryType == SummaryReportsType.CustomerWeek) ? "" : " and Color");
            //int totalWidth = 1109;
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;

            #region Header
            //--1 row--
            aHeight = 46;
            aWidth = 400;
            xrLabel = CreateHeaderLabel(headerBand, fIsOutStanding ? "Outstanding PO Summary Report" : "All PO Summary Report", new Point(x, 0), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Tahoma", 14F, System.Drawing.FontStyle.Bold);
            x += aWidth;

            y += aHeight;

            x = 20;
            aHeight = 23;
            aWidth = 200;
            xrLabel = CreateHeaderLabel(headerBand, s1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            xrLabel.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            x += aWidth + 20;
            //aWidth = 200;
            //CreateHeaderLabel(headerBand, s2, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None);
            //x += aWidth;

            //x = 600;
            int iClientPageWidth = report.PageWidth - report.Margins.Left - report.Margins.Right;
            x = iClientPageWidth - 150;
            aWidth = 100;
            CreatePageInfo(headerBand, "Page {0} of {1}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.NumberOfTotal);

            y += aHeight + 5;

            #region header title

            x = 0;
            aHeight = 30;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(headerBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 70;
            xrLabel = CreateHeaderLabel(headerBand, "Confirm ETD\r\nby Week", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 120;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nReference", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeekColor)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, "Color Code", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }

            aWidth = 60;
            xrLabel = CreateHeaderLabel(headerBand, "Total Nr.\r\nOf PO", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeek)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(headerBand, "Total Nr.\r\nOf Color", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                x += aWidth;
            }

            aWidth = 80;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nPO Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(headerBand, "Delivered\r\nQty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(headerBand, "Supplier\r\nOutstanding Qty", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(headerBand, "PH BAL\r\nAmount(HKD)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;
            int iAmountX = x;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(headerBand, "Factory", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Right | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            y += aHeight;
            #endregion

            #endregion
            headerBand.Height = y;
            return iAmountX;
        }
        private void CreateSummaryGroupLabels_OS(XtraReport report, int iWidth)
        {
            XRLabel xrLabel;
            GroupHeaderBand pGroupHeaderBand = new GroupHeaderBand();
            report.Bands.Add(pGroupHeaderBand);
            pGroupHeaderBand.GroupFields.Clear();

            pGroupHeaderBand.GroupFields.Add(new GroupField("Customer", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));

            xrLabel = CreateHeaderLabel(pGroupHeaderBand, string.Format("[Customer]"), new Point(0, 0), new Size(200, 18), BorderSide.None, TextAlignment.MiddleLeft);
            xrLabel.Font = new System.Drawing.Font("Arial", 8.5F, System.Drawing.FontStyle.Bold);
            //pGroupHeaderBand.PageBreak = PageBreak.BeforeBand;
            pGroupHeaderBand.KeepTogether = true;
            pGroupHeaderBand.RepeatEveryPage = true;
            pGroupHeaderBand.Height = 23;

            GroupFooterBand pGroupFooterBand = new GroupFooterBand();
            report.Bands.Add(pGroupFooterBand);
            //xrLabel = CreateLabel(pGroupFooterBand, string.Format(""), new Point(0, 0), new Size(aWidth * 8, 2), BorderSide.Top, TextAlignment.MiddleCenter);
            int widthX = iWidth - 160;
            //string str ;
            int x = 0;
            int y = 0;
            int aHeight = 23;
            int aWidth = 46 + 70;
            //xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            //x += aWidth;

            //aWidth = 70;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "[SubTotalStr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleLeft, false);
            xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            aWidth = 120;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "[VCAT03Nr1]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeekColor)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(pGroupFooterBand, "[ColorNr1]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                //xrLabel.DataBindings.Add("Text", this.dtSumReport, "ColorNr", "{0:#,0}");
                //xrLabel.Summary.Func = SummaryFunc.Sum;
                //xrLabel.Summary.Running = SummaryRunning.Group;
                //xrLabel.Summary.FormatString = "{0:#,0.00}";
                x += aWidth;
            }

            aWidth = 60;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "[poNr1]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "poNr", "{0:#,0}");
            //xrLabel.Summary.Func = SummaryFunc.Sum;
            //xrLabel.Summary.Running = SummaryRunning.Group;
            //xrLabel.Summary.FormatString = "{0:#,0.00}";
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeek)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(pGroupFooterBand, "[ColorNr1]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
                //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
                //xrLabel.DataBindings.Add("Text", this.dtSumReport, "ColorNr", "{0:#,0}");
                //xrLabel.Summary.Func = SummaryFunc.Sum;
                //xrLabel.Summary.Running = SummaryRunning.Group;
                //xrLabel.Summary.FormatString = "{0:#,0.00}";
                x += aWidth;
            }

            aWidth = 80;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppQTY", "{0:#,0}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:#,0}";
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "DeliveredQty", "{0:#,0}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:#,0}";
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppOSQTY", "{0:#,0}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:(#,0)}";
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            xrLabel.Summary.Func = SummaryFunc.Sum;
            xrLabel.Summary.Running = SummaryRunning.Group;
            xrLabel.Summary.FormatString = "{0:#,0.00}";
            x += aWidth;
            int iAmountX = x;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(pGroupFooterBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, true);
            //xrLabel.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular);//Tahoma
            x += aWidth;

            pGroupFooterBand.Height = 23;

            //ReportFooterBand pReportFooterBand = new ReportFooterBand();
            //report.Bands.Add(pReportFooterBand);
            //xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format("Total:"), new Point(widthX, 2), new Size(70, 18), BorderSide.All, TextAlignment.MiddleCenter);
            //xrLabel = CreateHeaderLabel(pReportFooterBand, string.Format(""), new Point(widthX + 70, 2), new Size(90, 18), BorderSide.Right | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleRight);
            //xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            //xrLabel.Summary.Func = SummaryFunc.Sum;
            //xrLabel.Summary.Running = SummaryRunning.Report;
            //xrLabel.Summary.FormatString = "{0:#,0.00}";
            //pReportFooterBand.Height = 22;


        }
        private void CreateSummaryDetailLabels_OS(Band detailBand)
        {
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = 0;
            XRLabel xrLabel;
            //aHeight = 30;

            //xrLabel.DataBindings.Add("Text", _ReportTable, "Salary2", "{0:#,0.00}");
            #region Data
            x = 0;
            aHeight = 18;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(detailBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;

            aWidth = 70;
            xrLabel = CreateHeaderLabel(detailBand, "[aYear] Week [aWeek]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            x += aWidth;

            aWidth = 120;
            xrLabel = CreateHeaderLabel(detailBand, "[VCAT03]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, true);
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeekColor)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(detailBand, "[Col]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }

            aWidth = 60;
            xrLabel = CreateHeaderLabel(detailBand, "[poNr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter);
            x += aWidth;

            if (this.fSummaryType == SummaryReportsType.CustomerWeek)
            {
                aWidth = 70;
                xrLabel = CreateHeaderLabel(detailBand, "[ColorNr]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
                x += aWidth;
            }

            aWidth = 80;
            xrLabel = CreateHeaderLabel(detailBand, "[SuppQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppQTY", "{0:#,0}");
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(detailBand, "[DeliveredQty]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "DeliveredQty", "{0:#,0}");
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(detailBand, "[SuppOSQTY]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "SuppOSQTY", "{0:(#,0)}");
            x += aWidth;

            aWidth = 90;
            xrLabel = CreateHeaderLabel(detailBand, "[AMount]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, true);
            xrLabel.DataBindings.Add("Text", this.dtSumReport, "AMount", "{0:#,0.00}");
            x += aWidth;
            int iAmountX = x;

            aWidth = 46;
            xrLabel = CreateHeaderLabel(detailBand, "[Factory]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, true);
            x += aWidth;

            y += aHeight;

            #endregion


            detailBand.Height = y;

        }
        #endregion

        #endregion

        #region BlackWhitePrint
        public static void SetBlackWhitePrinting_Report(XtraReportBase report)
        {
            if (report == null) return;

            foreach (XRControl c in report.Bands)
            {
                c.BackColor = Color.Transparent;
                c.ForeColor = SystemColors.ControlText;

                if (c is XtraReportBase)
                    SetBlackWhitePrinting_Report((XtraReportBase)c);
                else if (c is SubreportBase)
                {
                    SetBlackWhiteForStyle(((SubreportBase)c).ReportSource);
                    SetBlackWhitePrinting_Report(((SubreportBase)c).ReportSource);
                }
                else
                {
                    SetBlackWhitePrinting_Control(c);
                }
            }
        }
        public static void SetBlackWhitePrinting_Control(XRControl control)
        {
            if (control == null) return;
            //if (control.Name == "GroupFooter2")
            //{
            //    string s = "";
            //}
            foreach (XRControl c in control.Controls)
            {
                c.BackColor = Color.Transparent;
                c.ForeColor = SystemColors.ControlText;
                if (c is XtraReportBase)
                    SetBlackWhitePrinting_Report((XtraReportBase)c);
                else if (c is PH.Platform.Report.PivotGrid.PRPivotGrid)
                {
                    SetBlackWhitePrinting_PRPivotGrid((PH.Platform.Report.PivotGrid.PRPivotGrid)c);
                }
                else if (c is SubreportBase)
                {
                    SetBlackWhiteForStyle(((SubreportBase)c).ReportSource);
                    SetBlackWhitePrinting_Report(((SubreportBase)c).ReportSource);
                }
                else
                {
                    SetBlackWhitePrinting_Control(c);
                }
            }
        }
        public static void SetBlackWhitePrinting_PRPivotGrid(PH.Platform.Report.PivotGrid.PRPivotGrid grid)
        {
            SetBlackWhitePrinting_PivotGridColumnCollection(grid.LeftAreaFields);
            SetBlackWhitePrinting_PivotGridColumnCollection(grid.RightAreaFields);
            SetBlackWhitePrinting_PivotGridColumnCollection(grid.ColumnAreaFields);
            SetBlackWhitePrinting_PivotGridColumnCollection(grid.DataAreaFields);

        }
        public static void SetBlackWhitePrinting_PivotGridColumnCollection(PH.Platform.Report.PivotGrid.PivotGridColumnCollection collection)
        {
            foreach (PH.Platform.Report.PivotGrid.PivotGridColumn col in collection)
            {
                col.HeaderBackColor = Color.Transparent;
                col.DetailBackColor = Color.Transparent;

                col.HeaderForeColor = SystemColors.ControlText;
                col.DetailForeColor = SystemColors.ControlText;
            }
        }


        public static void SetBlackWhiteForStyle(XtraReport report)
        {
            if (report == null) return;
            foreach (XRControlStyle style in report.StyleSheet)
            {
                style.BackColor = Color.Transparent;
                style.ForeColor = SystemColors.ControlText;
            }
        }
        #endregion


    }

    public enum SummaryReportsType
    {
        Customer, ItemCode, ItemCodeColor, Week, Supplier, CustomerWeek, CustomerWeekColor
    }
    public enum PHPrintReportOption
    {
        None,//0
        SummaryReport,//1
        ExternalA4,//2
        InternalA3,//3
        SumA3,//4
        ShipmentDetail//5
    }
    public enum PHReportAction
    {
        None, ShowReport, DesignReport, ExportReport, GeneratePOPC, SavePOPC, DirectGetData
    }
    public enum PHReportA3A4
    {
        ExternalA4, InternalA3, SumA3
    }

}
