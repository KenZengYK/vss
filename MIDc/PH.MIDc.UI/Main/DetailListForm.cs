using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
//using PH.Common.Report;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using PH.MIDc.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.MIDc.UI.RPT;


namespace PH.MIDc.UI
{
    public partial class DetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        public string MIDStatus { get; set; }
        public string UserRight { get; set; }
        public bool IsCopyAsNew { get; set; }
        #endregion

        public DetailListForm()
        {
            InitializeComponent();

            this.EditorTypeName = typeof(DetailDetailForm).FullName;
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            UserRight = "";
            MIDStatus = "";

        }
        IEnumerable<Detail> _detailList;

        public DetailListForm(string midStatus)
        {
            InitializeComponent();

            this.EditorTypeName = typeof(DetailDetailForm).FullName;
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            UserRight = "";
            MIDStatus = midStatus;

            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnCopyAsNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

        }

        public bool getRiskQAEidt = false;

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            if (MIDStatus == "PMID-Completed")
            {
                if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator) { return; }

                var obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Approve");
                this.btnAction.Visibility = (obj == null) ? BarItemVisibility.Never : BarItemVisibility.Always;
                this.PrintHangTag.Visibility = this.btnAction.Visibility;
                this.btnPrintSheet.Visibility = this.btnAction.Visibility;
                this.barSubItem1.Visibility = this.btnAction.Visibility;
            }

            PH.Platform.AuthMgr.BO.Auth_FunRight checkFunctionRight =
                PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Edit");

            getRiskQAEidt = checkFunctionRight == null;
        }


        public DetailListForm(string midStatus, string userRight)
            : this(midStatus)
        {
            UserRight = userRight;
            this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        }


        //public DetailListForm(string midStatus, string userRight)
        //{
        //    InitializeComponent();
        //    this.EditorTypeName = typeof(DetailDetailForm).FullName;
        //    Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        //    UserRight = userRight;
        //    MIDStatus = midStatus;
        //    this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //}

        public void PostGridData()
        {
            Controller.PostGridValue(this.objListGridView);
        }

        //private void PrintPreviewAndExportFile(bool isExport, int index)
        //{
        //    PHReport report = new PHReport();
        //    report.ReportTitle = "";
        //    report.pageKind = System.Drawing.Printing.PaperKind.A4;
        //    report.margins = new System.Drawing.Printing.Margins(28, 28, 24, 24); ;
        //    report.Landscape = false;
        //    report.ShowReportHeaderBand = false;
        //    report.ShowPageHeaderBand = false;
        //    report.ShowReportFooterBand = false;
        //    report.ShowTopMarginBand = false;
        //    report.ShowBottomMarginBand = false;
        //    report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_Label);
        //    report.TopMarginBandCreating += new CreateReportBandEventHandler(report_TopMarginBandCreating);
        //    report.BottomMarginBandCreating += new CreateReportBandEventHandler(report_BottomMarginBandCreating);

        //    if (isExport)
        //        report.ExportByIndex(index);
        //    else
        //    {
        //        report.CreateReport();
        //        report.Report.Margins = report.margins;

        //        //report.ShowDesignerDialog();

        //        //report.ShowDesignerDialog();
        //        report.ShowPreviewDialog();
        //    }

        //}

        //void report_BottomMarginBandCreating(object sender, ReportBandEventArgs e)
        //{
        //    e.Report.Bands.Remove(e.ReportBand);
        //}

        //void report_TopMarginBandCreating(object sender, ReportBandEventArgs e)
        //{
        //    e.Report.Bands.Remove(e.ReportBand);
        //}

        private List<PH.MIDc.BO.Detail> GetPrintLabelData()
        {
            List<PH.MIDc.BO.Detail> details = new List<PH.MIDc.BO.Detail>();
            for (int i = 0; i < this.objListGridView.DataRowCount; i++)
            {
                PH.MIDc.BO.Detail d = this.objListGridView.GetRow(i) as PH.MIDc.BO.Detail;
                if (d.Selected)
                    details.Add(d);
            }
            if (details.Count == 0)
            {
                Detail d = this.BindingSource.Current as Detail;
                if (d != null) details.Add(d);
            }
            return details;
        }

        void DetailListForm_Load(object sender, EventArgs e)
        {
            this.AllowGridEdit = true;
            this.objListGridView.OptionsBehavior.Editable = true;
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
            {
                col.OptionsColumn.AllowEdit = true;
                if (col.FieldName == "Selected")
                    col.OptionsColumn.ReadOnly = false;
                else
                    col.OptionsColumn.ReadOnly = true;
            }
        }

        //void report_DetailBandCreating_Label(object sender, ReportBandEventArgs e)
        //{
        //    //DetailBand db = e.ReportBand as DetailBand;
        //    //db.MultiColumn.ColumnCount = 2;
        //    //db.MultiColumn.Direction = ColumnDirection.AcrossThenDown;
        //    //db.MultiColumn.Mode = MultiColumnMode.UseColumnCount;

        //    #region field, init value
        //    int aHeight = 0;
        //    int aWidth = 0;
        //    int aWidth1 = 90;
        //    int aWidth2 = 70;// 68;
        //    int x = 0;
        //    int xColumn = 0;
        //    int y = e.Y;
        //    XRLabel xrLabel;
        //    XRPageBreak pb;

        //    int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
        //    int x_left = 0;
        //    int x_right = iClientPageWidth / 2 + 16;
        //    int y_left = y;
        //    int y_right = y;
        //    List<PH.MIDc.BO.Detail> labels = GetPrintLabelData();
        //    int i = 0;
        //    #endregion

        //    foreach (PH.MIDc.BO.Detail d in labels)
        //    {
        //        #region init value
        //        i++;
        //        if (Controller.IsOdd(i))
        //        {
        //            xColumn = x_left;
        //            y = y_left;
        //        }
        //        else
        //        {
        //            xColumn = x_right;
        //            y = y_right;
        //        }

        //        aHeight = 15;
        //        //aWidth = aWidth2;
        //        #endregion
        //        y += 7;
        //        #region 1--top--SpecialLabel,SampleOrder
        //        //x = xColumn;
        //        //aWidth = aWidth1 + aWidth2 * 2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, d.SpecialTerms, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, 9F, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        //x += aWidth;

        //        //aWidth = aWidth2 * 2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("Dvp Prj No.:  {0}", d.SampleOrderNo), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
        //        //x += aWidth;
        //        //y += aHeight;

        //        //x = x1;
        //        //PHReport.CreatePageInfo(e.ReportBand, "Print date:  {0:yyyy'/'MM'/'dd}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.DateTime);
        //        //x += aWidth;
        //        //y += aHeight;

        //        //----------
        //        aWidth = aWidth2;
        //        x = xColumn;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Dvp Prj No.:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        aWidth = aWidth1 + aWidth2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.SampleOrderNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        //y += aHeight;

        //        //x = x1;
        //        aWidth = aWidth2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Print date:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        PHReport.CreatePageInfo(e.ReportBand, "{0:yyyy'/'MM'/'dd}", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, PageInfo.DateTime);
        //        x += aWidth;
        //        y += aHeight;

        //        int x1 = x;
        //        int y1 = y;
        //        #endregion
        //        #region 2.title caption
        //        x = xColumn;
        //        aWidth = aWidth1;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Supp Item Ref.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        aWidth = aWidth2 * 2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Composition(%)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Marker Width", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        //x += aWidth;
        //        aWidth = aWidth2 * 2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "All in Cost (for ref.)", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "HKTA#", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        //x += aWidth;
        //        y += aHeight;

        //        int x2 = x;
        //        int y2 = y;
        //        #endregion
        //        #region 3 title data
        //        x = xColumn;
        //        aWidth = aWidth1 + aWidth2 * 2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.SuppRef, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleLeft);
        //        x += aWidth;
        //        //aWidth = aWidth2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleCenter);
        //        //x += aWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleCenter);
        //        //x += aWidth;
        //        aWidth = aWidth2 * 2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:N4} HK$ / {1}", d.AllInPrice, d.PHUnit), new Point(x, y), new Size(aWidth, aHeight), BorderSide.All ^ BorderSide.Right, TextAlignment.MiddleCenter);
        //        x += aWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, (d.TargetPrice ?? 0).ToString("#,000"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom | BorderSide.Top, TextAlignment.MiddleCenter);
        //        //x += aWidth;
        //        y += aHeight;

        //        int x3 = x;
        //        int y3 = y;
        //        #endregion
        //        #region 4. composition
        //        int i4 = 0;
        //        foreach (CompositionDetail c in d.CompositionDetails)
        //        {
        //            if (c.Per == 0) continue;
        //            i4++;

        //            x = xColumn;
        //            aWidth = aWidth1 + aWidth2;
        //            //Xsj20120522:應JaneLai要求，如果SpecialTerms有值時，顯示SpecialTerms的值，否則顯示Composition
        //            //xrLabel = PHReport.CreateLabel(e.ReportBand, c.Composition, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
        //            xrLabel = PHReport.CreateLabel(e.ReportBand, c.SpecialTermsOrComposition, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);

        //            x += aWidth;
        //            aWidth = aWidth2 - 10;
        //            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:N2}", (c.Per ?? 0)), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
        //            x += aWidth + 10;
        //            y += aHeight;
        //        }
        //        for (int ii = i4; ii < 4; ii++)
        //        {
        //            x = xColumn;
        //            aWidth = aWidth1 + aWidth2;
        //            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft);
        //            x += aWidth;
        //            aWidth = aWidth2;
        //            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight);
        //            x += aWidth;
        //            y += aHeight;
        //        }
        //        int x4 = x;
        //        int y4 = y;
        //        #endregion
        //        #region 5. Purchase,Marker Width  //leadTime, shipmode, QA status
        //        string suppwidth = "N.A.";
        //        string usablewidth = "N.A.";
        //        //switch (d.PurchaseWidthOption)
        //        //{
        //        //    case 1:
        //        suppwidth = string.Format("{0:#,##0.####} MM", d.SupplierWidth);
        //        //    break;
        //        //case 2:
        //        usablewidth = string.Format("{0:#,##0.####} MM", d.UsableWidth);
        //        //        break;
        //        //    case 0:
        //        //        break;
        //        //    default:
        //        //        break;
        //        //}

        //        //bool isL = d.MaterialGroup == "L";
        //        bool isL = (d.MaterialGroup == "L") && ("EMA, PSL, RAL, SAL".IndexOf(d.MaterialType) < 0);
        //        string sSuppwidth = isL ? "   - top to top of scallop:" : "   - Edge to Edge:";
        //        string sUsablewidth = isL ? "   - lower to lower scallop:" : "   - Usable Width:";

        //        x = xColumn;
        //        aWidth = aWidth1 + aWidth2 * 2;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Purchase Width (Supp Width):", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        y += aHeight;

        //        //------1--Edge to Edge-----
        //        int widthA = 45;
        //        x = xColumn;
        //        aWidth = aWidth1 + widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, sSuppwidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        aWidth = aWidth2 * 2 - widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, suppwidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        int x5 = x;
        //        //------2--Usable Width-----
        //        x = xColumn;
        //        aWidth = aWidth1 + widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, sUsablewidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        aWidth = aWidth2 * 2 - widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, usablewidth, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        //------3--Marker Width-----
        //        x = xColumn;
        //        aWidth = aWidth1 + widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Marker Width :", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        x += aWidth;
        //        aWidth = aWidth2 * 2 - widthA;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:#,0.####} MM", d.MarkerWidth), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        #region No use

        //        //------4--Hv Yarn lead time-----
        //        //int xWidth = 7;
        //        //x = xColumn;
        //        //aWidth = aWidth1;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Ttl lead time", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold | FontStyle.Italic);
        //        //x += aWidth;
        //        //int x54 = x;

        //        //aWidth = aWidth2 * 3 / 4;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Hv Yarn", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth2 / 4 + xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, (d.LeadTimeHYCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;

        //        //x = x54 + aWidth2 + xWidth;
        //        //aWidth = aWidth2 / 2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, d.YarnDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth - xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //y += aHeight;

        //        ////------5--Hv Geige lead time-----
        //        //x = xColumn;
        //        //aWidth = aWidth1;
        //        ////xrLabel = PHReport.CreateLabel(e.ReportBand, "Ttl lead time", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;

        //        //aWidth = aWidth2 * 3 / 4;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Hv Geige", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth2 / 4 + xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, (d.LeadTimeGeigeCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;

        //        //x = x54 + aWidth2 + xWidth;
        //        //aWidth = aWidth2 / 2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, d.GeigeDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth - xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //y += aHeight;

        //        ////------6--Running lead time-----
        //        //x = xColumn;
        //        //aWidth = aWidth1;
        //        ////xrLabel = PHReport.CreateLabel(e.ReportBand, "Ttl lead time", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;

        //        //aWidth = aWidth2 * 3 / 4;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Running", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth2 / 4 + xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, (d.LeadTimeRunningCheck ?? false) ? "[ X ]" : "[     ]", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;

        //        //x = x54 + aWidth2 + xWidth;
        //        //aWidth = aWidth2 / 2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, d.RunningDays, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleRight, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //aWidth = aWidth - xWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "days", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //y += aHeight;
        //        #endregion


        //        int y5 = y;
        //        #endregion
        //        #region 6.other data
        //        y = y3;
        //        x = x4;
        //        aWidth = aWidth2;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, "Season", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //xrLabel = PHReport.CreateLabel(e.ReportBand, d.SeasonNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        //x += aWidth;
        //        //y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Supplier", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.Supplier, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Origin", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.Country, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Weight", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("{0:#,0.##} gm/sqm", (d.WeightGmSqm ?? 0)), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Gauge", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.Gauge, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Supp unit", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.SupplierUnit, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;


        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "MCQ", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.MinColor, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "MOQ", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.MinOrder, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Dyeing multiple", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.DyeingMultiple, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Create Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, Controller.PHDateTimeString((d.CreateDate ?? DateTime.Now), "yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        //----------Version------------------------
        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Version No.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, d.VersionNo, new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;

        //        x = x4;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "Revised Date", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        xrLabel = PHReport.CreateLabel(e.ReportBand, "N.A.", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //        x += aWidth;
        //        y += aHeight;


        //        int x6 = x;
        //        int y6 = y;

        //        int aH = Math.Abs(y5 - y6);
        //        if (y5 > y6)
        //        {
        //            x = x4;
        //            aHeight = aH;
        //            xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
        //            x += aWidth;
        //            y += aHeight;
        //        }

        //        #endregion

        //        aHeight = 7;
        //        y += aHeight;

        //        if ((i + 1) % 10 == 0)
        //        {
        //            pb = new DevExpress.XtraReports.UI.XRPageBreak();
        //            pb.Location = new Point(0, y);
        //            e.ReportBand.Controls.Add(pb);
        //        }
        //        if (Controller.IsOdd(i))
        //        {
        //            y_left = y;
        //        }
        //        else
        //        {
        //            y_right = y;
        //        }
        //    }
        //    e.Y = y;


        //}

        void PrintHangTag_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Controller.PostGridValue(this.objListGridView);
            //PrintPreviewAndExportFile(false, -1);

            //将动态生成的报表，改为用Dev直接生成报表， 由David修改 2023-05-09
            //Detail obj = this.BindingSource.Current as Detail;
            List<Detail> DetailList = GetPrintLabelData();
            HangTagReport rptHangTagReport = new HangTagReport(DetailList);
            rptHangTagReport.ShowPreview();
        }

        void PrintMaterialList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<PH.MIDc.BO.Detail> details = new List<PH.MIDc.BO.Detail>();
            for (int i = 0; i < this.objListGridView.DataRowCount; i++)
            {
                PH.MIDc.BO.Detail d = this.objListGridView.GetRow(i) as PH.MIDc.BO.Detail;
                details.Add(d);
            }

            // List<PH.MIDc.BO.Detail> details = this.objListGridView.DataSource as List<PH.MIDc.BO.Detail>;
            PrintHelper.PrintMaterialListing(details);

        }

        void btnCopyAsNew_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (IsCancelOperate())
            {
                return;
            }
            string suppRef = "";
            this.objListGridControl.BeginUpdate();
            this.objListGridView.ActiveFilter.Clear();
            int iRow = this.objListGridView.FocusedRowHandle;
            this.RowChangeAutoSave = false;

            try
            {
                PH.MIDc.BO.Detail entityDOld = this.BindingSource.Current as PH.MIDc.BO.Detail;
                if (entityDOld == null) return;

                PH.MIDc.UI.Other.InputSuppRefForm form = new PH.MIDc.UI.Other.InputSuppRefForm("Copy Material As New");
                if (form.ShowDialog() == DialogResult.Cancel) return;
                suppRef = form.SupplierReference;
                form.Dispose();

                this.BindingSource.AddNew();
                PH.MIDc.BO.Detail entityDNew = this.BindingSource.Current as PH.MIDc.BO.Detail;
                entityDNew.SuppRef = suppRef;
                entityDNew.SampleOrder = entityDOld.SampleOrder;
                entityDOld.CopyTo(entityDNew);
                entityDNew.DataPreparedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                entityDNew.DataPreparedDate = System.DateTime.Now; ;
                entityDNew.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;

                this.DataContext.GetTable<PH.MIDc.BO.Detail>().InsertOnSubmit(entityDNew);
                this.DataContext.SubmitChanges();

                //iRow = this.objListGridView.FocusedRowHandle;
                //this.BindingSource.ResetCurrentItem();

                this.objListGridControl.DataSource = null;
                this.objListGridControl.DataSource = this.BindingSource;

            }
            finally
            {
                //this.objListGridView.MoveFirst();
                this.objListGridControl.EndUpdate();
            }
            LocateRowByMultipleValues(this.objListGridView, 0, suppRef);
            base.OnClickOpen();

            this.RowChangeAutoSave = true;

        }

        void barClone_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (IsCancelOperate())
            {
                return;
            }
            string suppRef = "";

            this.objListGridControl.BeginUpdate();
            this.objListGridView.ActiveFilter.Clear();
            int iRow = this.objListGridView.FocusedRowHandle;
            this.RowChangeAutoSave = false;

            try
            {
                PH.MIDc.BO.Detail entityDOld = this.BindingSource.Current as PH.MIDc.BO.Detail;
                if (entityDOld == null) return;

                PH.MIDc.UI.Other.InputSuppRefForm form = new PH.MIDc.UI.Other.InputSuppRefForm("Clone Material");
                if (form.ShowDialog() == DialogResult.Cancel) return;
                suppRef = form.SupplierReference;
                form.Dispose();

                this.BindingSource.AddNew();
                PH.MIDc.BO.Detail entityDNew = this.BindingSource.Current as PH.MIDc.BO.Detail;
                entityDNew.SuppRef = suppRef;
                entityDOld.CloneTo(entityDNew);
                //entityDNew.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;

                this.DataContext.GetTable<PH.MIDc.BO.Detail>().InsertOnSubmit(entityDNew);
                this.DataContext.SubmitChanges();

                //iRow = this.objListGridView.FocusedRowHandle;
                //this.BindingSource.ResetCurrentItem();

                this.objListGridControl.DataSource = null;
                this.objListGridControl.DataSource = this.BindingSource;
            }
            finally
            {
                //this.objListGridView.FocusedRowHandle = iRow;
                this.objListGridControl.EndUpdate();
            }
            LocateRowByMultipleValues(this.objListGridView, 0, suppRef);
            base.OnClickOpen();

            this.RowChangeAutoSave = true;

        }
        public void LocateRowByMultipleValues(DevExpress.XtraGrid.Views.Base.ColumnView view, int startRowHandle, string suppref)
        {
            int dataRowCount;
            dataRowCount = (view as DevExpress.XtraGrid.Views.Grid.GridView).DataRowCount;

            bool match;

            for (int currentRowHandle = startRowHandle; currentRowHandle < dataRowCount; currentRowHandle++)
            {
                PH.MIDc.BO.Detail d = view.GetRow(currentRowHandle) as PH.MIDc.BO.Detail;
                if (d == null) continue;

                match = (d.SuppRef == suppref);

                if (match)
                {
                    view.FocusedRowHandle = currentRowHandle;
                }
            }
        }

        void objListGridView_DataSourceChanged(object sender, EventArgs e)
        {
            this.objListGridView.MoveFirst();

        }

        private void btnPrintSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.Detail d = this.BindingSource.Current as PH.MIDc.BO.Detail;
            if (d == null) return;

            MIDcDataContext dc = this.DataContext as MIDcDataContext;
            PH.MIDc.BackEnd.MaterialIdentityCertificateReport r = new PH.MIDc.BackEnd.MaterialIdentityCertificateReport();
            var aa = from a in dc.Details
                     where a.SuppRef == d.SuppRef
                     select a;
            r.DataSource = aa;

            r.ShowPreviewDialog();
        }


        #region Approval Cycle
        public override void DataBind()
        {
            try
            {

                DetailList dlist = new DetailList();
                this.DataContext = dlist.CurrentDataContext;
                this.DataContext.CommandTimeout = 1000;
                this.BindingSource.DataSource = typeof(PH.MIDc.BO.Detail);

                string selectCaption = "Select";
                this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                switch (MIDStatus)
                {
                    case MIDc_MIDStatus.TMID_WIP:
                        switch (UserRight)
                        {
                            case TMID_UserRight.Prepare:
                                //_detailList = dlist.GetDataByCondition(string.Format("MIDStatus='{0}' and  IsNull(DataPreparedBy,'')=''", MIDc_MIDStatus.TMID_WIP));
                                _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(DataPreparedBy,'')<>'' and IsNull(ApprovedBy,'')=''  ", MIDc_MIDStatus.TMID_WIP));
                                selectCaption = "Prepare";
                                this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                                this.gridColumnSelected.Visible = false;
                                break;
                            case TMID_UserRight.Audit:
                                _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(DataPreparedBy,'')<>'' and IsNull(ApprovedBy,'')=''  and IsNull(Customer,'')<>'' ", MIDc_MIDStatus.TMID_WIP));
                                selectCaption = "Audit";
                                break;
                            case TMID_UserRight.Confirm:
                                _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(DataPreparedBy,'')<>'' and IsNull(ApprovedBy,'')<>'' and IsNull(ConfirmedBy,'')='' ", MIDc_MIDStatus.TMID_WIP));
                                selectCaption = "Confirm";
                                break;
                            default:
                                _detailList = (from a in dlist.CurrentDataContext.Details select a).Take(0);
                                break;
                        }
                        break;
                    case MIDc_MIDStatus.TMID_Completed:
                        _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(ConfirmedBy,'')<>'' and IsNull(TMIDCompletedBy,'')='' ", MIDc_MIDStatus.TMID_WIP));
                        selectCaption = "Approval";
                        break;
                    case MIDc_MIDStatus.PMID_WIP:
                        _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(TMIDCompletedBy,'')<>'' and IsNull(PMIDWIPBy,'')='' and MaterialGroup<>'P' ", MIDc_MIDStatus.TMID_Completed));
                        selectCaption = "Confirm";
                        break;
                    case MIDc_MIDStatus.PMID_Completed:
                        _detailList = dlist.GetDataByCondition(string.Format("Status <> 'Drop' and MIDStatus='{0}' and  IsNull(PMIDWIPBy,'')<>'' and IsNull(PMIDCompletedBy,'')='' ", MIDc_MIDStatus.PMID_WIP));
                        selectCaption = "Approval";
                        break;
                    default:
                        _detailList = (from a in dlist.CurrentDataContext.Details select a).Take(0);
                        //this.colShipMode.Visible = this.colPaymentTerm.Visible = this.gridColumn_AllinCost.Visible = this.colDeliveryTerm.Visible = false;
                        this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                        break;
                }
                this.BindingSource.DataSource = _detailList;
                this.gridColumnSelected.Caption = selectCaption;
                base.DataBind();

                //this.AllowGridEdit = true;
                this.AllowAddRow = false;
            }
            catch (Exception ex)
            {
                //this.BindingSource.DataSource = typeof(PH.MIDc.BO.Detail);
                MessageBox.Show("綁定數據異黨，可以由於網絡阻塞而引起，請關閉當前頁簽後，重試!", "數據綁定異常");

            }

            //PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            //this.DataContext = context;
            //this.BindingSource.DataSource = (from a in context.Details select a).Take(0);


            //DataQueryParameter param = new DataQueryParameter();
            //param.BoType = typeof(PH.MIDc.BO.Detail);
            //param.View = this.objListGridView;
            //param.DataContext = this.DataContext;
            //param.FixedWherePart = " MIDStatus='" + MIDStatus + "'";
            //param.WarnRecord = 100;
            //this.StartEnquiry(param);


        }

        private void btnAction_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Action();
        }

        protected virtual void Action()
        {
            this.objListGridView.PostEditor();
            this.objListGridView.CloseEditor();
            this.objListGridView.UpdateCurrentRow();
            this.BindingSource.EndEdit();

            //Xsj20110224:記錄當前Confirm的Mat'l Type信息
            List<PH.MIDc.BO.Detail> confirmDetailList = new List<Detail>();

            //IEnumerable<Detail> bb = this.BindingSource.DataSource as IEnumerable<Detail>;
            //var aa1 = (from a in _detailList
            //         where a.Selected
            //         select a).ToList();

            //if (aa.Count() == 0) return;

            var aa = (from PH.MIDc.BO.Detail val in this.BindingSource.List
                      where val.Selected
                      select val).ToList();
            if (aa.Count == 0) return;

            if (MessageBox.Show(string.Format("Do you want to {0} these materials?", this.gridColumnSelected.Caption), "System Note", MessageBoxButtons.OKCancel) != DialogResult.OK)
            {
                return;
            }

            //this.objListGridControl.BeginUpdate();
            try
            {
                try
                {
                    string person = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                    //for (int i = 0; i < this.objListGridView.DataRowCount; i++)
                    foreach (PH.MIDc.BO.Detail d in this.BindingSource.List)
                    {
                        //PH.MIDc.BO.Detail d = this.objListGridView.GetRow(i) as PH.MIDc.BO.Detail;
                        if (!d.Selected) continue;

                        switch (MIDStatus)
                        {
                            case MIDc_MIDStatus.TMID_WIP:
                                switch (UserRight)
                                {
                                    case TMID_UserRight.Prepare:
                                        d.DataPreparedBy = person;
                                        d.DataPreparedDate = System.DateTime.Now;
                                        break;
                                    case TMID_UserRight.Confirm:
                                        d.Confirmed = true;
                                        d.ConfirmedBy = person;
                                        d.ConfirmDate = System.DateTime.Now;
                                        break;
                                    case TMID_UserRight.Audit:
                                        d.Approved = true;
                                        d.ApprovedBy = person;
                                        d.ApproveDate = System.DateTime.Now;
                                        break;
                                    default:
                                        break;
                                }
                                d.MIDStatus = MIDc_MIDStatus.TMID_WIP;
                                break;
                            case MIDc_MIDStatus.TMID_Completed:
                                d.TMIDCompleted = true;
                                d.TMIDCompletedBy = person;
                                d.TMIDCompletedDate = System.DateTime.Now;
                                d.MIDStatus = MIDc_MIDStatus.TMID_Completed;
                                break;
                            case MIDc_MIDStatus.PMID_WIP:
                                d.PMIDWIP = true;
                                d.PMIDWIPBy = person;
                                d.PMIDWIPDate = System.DateTime.Now;
                                d.MIDStatus = MIDc_MIDStatus.PMID_WIP;
                                break;
                            case MIDc_MIDStatus.PMID_Completed:
                                d.PMIDCompleted = true;
                                d.PMIDCompletedBy = person;
                                d.PMIDCompletedDate = System.DateTime.Now;
                                d.MIDStatus = MIDc_MIDStatus.PMID_Completed;
                                break;
                            default:
                                break;
                        }

                        confirmDetailList.Add(d);
                        //d.Save();
                    }
                    this.DataContext.SubmitChanges();

                    #region Xsj20110224:發送郵件
                    try
                    {
                        confirmDetailList.Sort(CompareDetail);

                        if (confirmDetailList != null)
                        {
                            string switchContent = MIDStatus + (string.IsNullOrEmpty(UserRight) ? "" : ";" + UserRight);
                            switch (switchContent)
                            {
                                case "TMID-WIP;Prepare":
                                    Notify.SendEmail(NotifyStatus.TMID_WIP_Prepare, confirmDetailList);
                                    break;
                                case "TMID-WIP;Audit":
                                    Notify.SendEmail(NotifyStatus.TMID_WIP_Audit, confirmDetailList);
                                    break;
                                case "TMID-WIP;Confirm":
                                    Notify.SendEmail(NotifyStatus.TMID_WIP_Confirm, confirmDetailList);
                                    break;
                                case "TMID-Completed":
                                    Notify.SendEmail(NotifyStatus.TMID_Completed, confirmDetailList);
                                    break;
                                case "PMID-WIP":
                                    Notify.SendEmail(NotifyStatus.PMID_WIP, confirmDetailList);
                                    break;
                                case "PMID-Completed":
                                    Notify.SendEmail(NotifyStatus.PMID_Completed, confirmDetailList);
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        string logMsg = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName + "發送[" + MIDStatus + (string.IsNullOrEmpty(UserRight) ? "" : ";" + UserRight) + "]郵件失敗。";
                        LogRecorder logRecorder = new LogRecorder();
                        logRecorder.LogRecord("New MIDc Check Email", logMsg);
                        MessageBox.Show("發送通知郵件失敗:\r\n" + ex.ToString());
                    }
                    #endregion

                    //重新綁定數據
                    DataBind();
                    MessageBox.Show("Action Success!", "System Note", MessageBoxButtons.OK);
                }
                catch (Exception ex)
                {
                    if (ex.Message == "Row not found or changed.")
                    {
                        MessageBox.Show("當前行內容已被重新Action,請在刷新後,重新操作.", "操作失敗", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        DataBind();
                    }
                    else
                    {
                        MessageBox.Show("Set the choosed rows to apprival status Is False!\r\n" + ex.ToString(), "System Note", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            finally
            {
                //this.objListGridControl.EndUpdate();

            }

        }



        #endregion

        //排序等問題
        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.objListGridView.ClearSorting();
            this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            this.colSuppRef.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;

            switch (MIDStatus)
            {
                case MIDc_MIDStatus.TMID_WIP:
                    switch (UserRight)
                    {
                        case TMID_UserRight.Prepare:
                            break;
                        case TMID_UserRight.Audit:
                            //this.objListGridView.ClearSorting();
                            this.colSampleOrder.VisibleIndex = 1;
                            //this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                            this.colCustomer.VisibleIndex = 2;
                            //gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                            break;
                        case TMID_UserRight.Confirm:
                            this.colCustomer.VisibleIndex = 1;
                            break;
                        default:
                            break;
                    }
                    break;
                case MIDc_MIDStatus.TMID_Completed:
                    //this.objListGridView.ClearSorting();
                    this.colSampleOrder.VisibleIndex = 1;
                    //this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    this.colCustomer.VisibleIndex = 2;
                    //gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    break;
                case MIDc_MIDStatus.PMID_WIP:
                    goto case MIDc_MIDStatus.TMID_Completed;
                case MIDc_MIDStatus.PMID_Completed:
                    this.objListGridView.ClearSorting();
                    ////this.gridColumn_SuppMIDc.VisibleIndex = 1;
                    ////this.gridColumn_SuppMIDc.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    ////this.colCustomer.VisibleIndex = 2;
                    ////gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.None;
                    this.gridColumn_SuppMIDc.VisibleIndex = 1;
                    this.gridColumn_SuppMIDc.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
                    this.colCustomer.VisibleIndex = 2;
                    gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    gridColumn1.VisibleIndex = 3;//Mat Type
                    colSuppRef.VisibleIndex = 4;//Supp Ref
                    gridColumn2.VisibleIndex = 5;//Item code
                    break;
                default:
                    //this.objListGridView.ClearSorting();
                    this.colShipMode.Visible = this.colPaymentTerm.Visible = this.gridColumn_AllinCost.Visible = this.colDeliveryTerm.Visible = false;
                    //this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    //gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
                    //colSuppRef.VisibleIndex = 2;//Supp Ref


                    break;
            }

            //switch (MIDStatus)
            //{
            //    case MIDc_MIDStatus.TMID_WIP:
            //        switch (UserRight)
            //        {
            //            case TMID_UserRight.Prepare:
            //                break;
            //            case TMID_UserRight.Audit:
            //                this.objListGridView.ClearSorting();
            //                this.colSampleOrder.VisibleIndex = 1;
            //                this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //                this.colCustomer.VisibleIndex = 2;
            //                gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //                break;
            //            case TMID_UserRight.Confirm:
            //                this.colCustomer.VisibleIndex = 1;
            //                break;
            //            default:
            //                break;
            //        }
            //        break;
            //    case MIDc_MIDStatus.TMID_Completed:
            //        this.objListGridView.ClearSorting();
            //        this.colSampleOrder.VisibleIndex = 1;
            //        this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //        this.colCustomer.VisibleIndex = 2;
            //        gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //        break;
            //    case MIDc_MIDStatus.PMID_WIP:
            //        goto case MIDc_MIDStatus.TMID_Completed;
            //    case MIDc_MIDStatus.PMID_Completed:
            //        this.objListGridView.ClearSorting();
            //        //this.gridColumn_SuppMIDc.VisibleIndex = 1;
            //        //this.gridColumn_SuppMIDc.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //        //this.colCustomer.VisibleIndex = 2;
            //        //gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.None;
            //        this.gridColumn_SuppMIDc.VisibleIndex = 1;
            //        this.gridColumn_SuppMIDc.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
            //        this.colCustomer.VisibleIndex = 2;
            //        gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //        gridColumn1.VisibleIndex = 3;//Mat Type
            //        colSuppRef.VisibleIndex = 4;//Supp Ref
            //        gridColumn2.VisibleIndex = 5;//Item code
            //        break;
            //    default:
            //        this.objListGridView.ClearSorting();
            //        this.colShipMode.Visible = this.colPaymentTerm.Visible = this.gridColumn_AllinCost.Visible = this.colDeliveryTerm.Visible = false;
            //        //this.colSampleOrder.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;
            //        gridColumn_CreateDate.SortOrder = DevExpress.Data.ColumnSortOrder.Descending;

            //        break;
            //}
        }

        private int CompareDetail(Detail y, Detail x)
        {
            if (x == null)
            {
                if (y == null)
                {
                    // If x is null and y is null, they're
                    // equal. 
                    return 0;
                }
                else
                {
                    // If x is null and y is not null, y
                    // is greater. 
                    return -1;
                }
            }
            else
            {
                // If x is not null...
                //
                if (y == null)
                // ...and y is null, x is greater.
                {
                    return 1;
                }
                else
                {
                    return x.SampleOrderNo.CompareTo(y.SampleOrderNo);
                }
            }

        }


        //测试新的价格报表
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DialogForChosedMaterialPriceTypeForm dialogForMPT = new DialogForChosedMaterialPriceTypeForm();
            if (dialogForMPT.ShowDialog() == DialogResult.Cancel) return;


            PH.MIDc.BO.Detail d = this.BindingSource.Current as PH.MIDc.BO.Detail;
            if (d == null) return;

            MIDcDataContext dc = this.DataContext as MIDcDataContext;
            PH.MIDc.BackEnd.MaterialIdentityAllPrice r = new PH.MIDc.BackEnd.MaterialIdentityAllPrice();
            r.ChosedPriceType = dialogForMPT.Tag as List<string>;
            var aa = from a in dc.MaterialPriceHeaders
                     where a.SuppRef == d.SuppRef && r.ChosedPriceType.Contains(a.PriceType)
                     select a;
            r.DataSource = aa;
            //r.bindingSource1.DataSource = aa;              
            r.ShowPreviewDialog();
        }

        private void bBtn_SuppCodeCompare_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SuppCodeCompareToMIDcAndERP suppComp = new SuppCodeCompareToMIDcAndERP();
            suppComp.ShowDialog();
        }


        //Xsj20110812:禁止新增，修改，复杂，Clone已作删除的Supplier的Detail资料
        #region
        string _supplierCode;
        private bool CheckSupplierToDrop()
        {
            _supplierCode = "";

            Detail currDetail = this.BindingSource.Current as Detail;
            if (currDetail == null) return false;
            SampleOrder sOrder = currDetail.SampleOrder;
            if (sOrder == null) return false;


            string mIDcSupplier = sOrder.Supplier;
            _supplierCode = mIDcSupplier;
            PH.BasicInfo.BO.BasicInfoDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            PH.BasicInfo.BO.SupplierProfile supProfile = dcon.SupplierProfiles.Where(p => p.Supplier == mIDcSupplier).FirstOrDefault();
            if (supProfile == null)
            {
                return false;
            }
            if (supProfile.DeleteFlag ?? false)
            {
                return true;
            }
            if (supProfile.SupplierStatusDescription.ToUpper() == "TO-DROP")
            {
                return true;
            }

            return false;
        }

        private bool IsCancelOperate()
        {

            if (this.ParentForm == null || this.ParentForm.GetType().Name != "SampleOrderDetailForm")
            {
                return false;
            }

            PH.MIDc.UI.SampleOrderDetailForm sOrderDetailForm = this.ParentForm as PH.MIDc.UI.SampleOrderDetailForm;
            sOrderDetailForm.BindingSource.EndEdit();

            bool result = CheckSupplierToDrop();
            if (result)
            {
                MessageBox.Show("当前Suppliers[" + _supplierCode + "]已被停用，其状态为[To be Dropped]。请确认。");
            }
            return result;
        }

        protected override void OnClickAddNew()
        {
            if (IsCancelOperate())
            {
                return;
            }
            base.OnClickAddNew();
        }
        #endregion


        public override DevExpress.Utils.OptionsLayoutGrid SetOptionLayout()
        {
            //return base.SetOptionLayout();
            DevExpress.Utils.OptionsLayoutGrid opts = new DevExpress.Utils.OptionsLayoutGrid();
            opts.StoreAllOptions = false; //default is false;
            opts.StoreAppearance = false; //default is false;
            opts.StoreVisualOptions = true; //default is true;
            opts.StoreDataSettings = true; //default is true;
            opts.Columns.StoreAllOptions = false; //default is false;
            opts.Columns.StoreAppearance = false; //default is false;
            opts.Columns.StoreLayout = true; //defautl value is true

            opts.Columns.AddNewColumns = true; //default is true
            opts.Columns.RemoveOldColumns = true; //default is true
            return opts;
        }


        #region Selection

        //when status = 'Hold', then cannot be selected
        private void objListGridView_ShowingEditor(object sender, CancelEventArgs e)
        {
            PH.MIDc.BO.Detail d = this.BindingSource.Current as PH.MIDc.BO.Detail;
            if (d == null) return;

            //Xsj:禁止选择Hold和Drop状态的记录
            e.Cancel = (d.Status == "Hold" || d.Status == "Drop") && (MIDStatus == MIDc_MIDStatus.TMID_Completed || MIDStatus == MIDc_MIDStatus.PMID_Completed);
        }

        private void btnSelectAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Selection(true);
        }

        private void btnClearAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Selection(false);
        }
        private void Selection(bool bSelect)
        {
            this.objListGridView.PostEditor();
            this.objListGridView.CloseEditor();
            this.objListGridView.UpdateCurrentRow();
            this.BindingSource.EndEdit();

            //int currHandle = objListGridView.FocusedRowHandle;
            try
            {

                //只针对网格中显示的行操作，比如：过滤后只操作过滤后的行， 由David改写 2019-10-17
                for (int i = 0; i < this.objListGridView.DataRowCount; i++)
                {
                    Detail d = this.objListGridView.GetRow(i) as Detail;

                    //Xsj:禁止选择Hold和Drop状态的记录
                    if ((d.Status == "Hold" || d.Status == "Drop") && (MIDStatus == MIDc_MIDStatus.TMID_Completed || MIDStatus == MIDc_MIDStatus.PMID_Completed))
                        d.Selected = false;
                    else d.Selected = bSelect;
                }

                //foreach (PH.MIDc.BO.Detail d in this.BindingSource.List)
                //{
                //    //Xsj:禁止选择Hold和Drop状态的记录
                //    if ((d.Status == "Hold" || d.Status == "Drop") && (MIDStatus == MIDc_MIDStatus.TMID_Completed || MIDStatus == MIDc_MIDStatus.PMID_Completed))
                //        d.Selected = false;
                //    else d.Selected = bSelect;
                //}
            }
            finally
            {
                objListGridControl.RefreshDataSource();
            }


        }

        #endregion

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "RiskQA")
            {
                if (string.IsNullOrEmpty(e.DisplayText) || e.DisplayText == "N.A.")
                {
                    e.DisplayText = "N.A.";

                }
                else
                {
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }


            if (e.Column.FieldName == "SupplierWidth" || e.Column.FieldName == "UsableWidth" || e.Column.FieldName == "MarkerWidth")
            {
                if (string.IsNullOrEmpty(e.DisplayText))
                {
                    e.DisplayText = "N.A.";

                }

            }




        }

        private void repositoryItemCheckEdit2_CheckedChanged(object sender, EventArgs e)
        {
            if (this.ParentForm is SampleOrderDetailForm)
            {
                SampleOrder obj = (this.ParentForm as SampleOrderDetailForm).BindingSource.Current as SampleOrder;
                if (obj == null) return;

                bool NeedShowDropStatus = (sender as DevExpress.XtraEditors.CheckEdit).Checked;
                this.BindingSource.DataSource = NeedShowDropStatus ? obj.Details : obj.Details.Where(p => p.Status != "Drop");
            }
        }

    }
}
