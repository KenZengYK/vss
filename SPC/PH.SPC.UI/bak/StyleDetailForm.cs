using DevExpress.XtraBars;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Drawing.Drawing2D;
using PH.Common.Report;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleDetailForm : PH.UI.UI2.ParentChildForm
    {
        public StyleDetailForm()
        {
            InitializeComponent();
        }


        private Style _style;
        //private StyleSizeListForm _frmStyleSize; 
        private StyleSampleProgressSheetListForm _frmStyleSampleProgressSheet; //Sample Progress Sheet-樣板進度表
        private StyleBOMListForm _frmStyleBOM;  //新樣板物料明細表
        //private StyleProduceRemarkListForm _frmStyleProduceRemark;  
        internal StyleSortListForm _frmStyleSort;   //樣板種類


        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            _style = this.BindingSource.Current as Style;
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            //_style.SampleOrder.IsDirty = true;
            //_style.IsDirty = true;
            //_style.StyleProduceRemark.Clear();
            //_style.Save();
            //_style.SampleOrder.Save();

            ////-------第1页--
            //_frmStyleSize = new StyleSizeListForm(_style);
            //_frmStyleSize.Dock = DockStyle.Fill;
            //_frmStyleSize.Show();
            //this.xtraTabPage1.Controls.Add(_frmStyleSize);

            //-------Sample Progress Sheet-樣板進度表-------------------------------------
            _frmStyleSampleProgressSheet = new StyleSampleProgressSheetListForm(_style);
            _frmStyleSampleProgressSheet.Dock = DockStyle.Fill;
            _frmStyleSampleProgressSheet.Show();
            this.xtraTabPage1.Controls.Add(_frmStyleSampleProgressSheet);

            //-------新樣板物料明細表-----------------------------------------------------
            _frmStyleBOM = new StyleBOMListForm(_style);
            _frmStyleBOM.Dock = DockStyle.Fill;
            _frmStyleBOM.Show();
            this.xtraTabPage2.Controls.Add(_frmStyleBOM);

            ////-------第4页--
            //_frmStyleProduceRemark = new StyleProduceRemarkListForm(_style);
            //_frmStyleProduceRemark.Dock = DockStyle.Fill;
            //_frmStyleProduceRemark.Show();
            //this.xtraTabPage4.Controls.Add(_frmStyleProduceRemark);

            //-------樣板種類-------------------------------------------------------------
            _frmStyleSort = new StyleSortListForm(_style);
            _frmStyleSort.Dock = DockStyle.Fill;
            _frmStyleSort.Show();
            this.xtraTabPage3.Controls.Add(_frmStyleSort);


            this.SelectPage(this.xtraTabPage1);//important
        }

        protected override void Return()
        {
            base.Return();

            (this.PrevControl as StyleListForm).RefreshData();
        }

        public void ShowStyleSheet()
        {
            this.SelectPage(xtraTabPage3);
        }

        public override void EditCurrent()
        {
            if (_style.IsComplete)
            {
                MessageBox.Show("已完成Style不能修改！");
                return;
            }
            base.EditCurrent();
        }

        protected override void DeleteCurrent()
        {
            if (_style.IsComplete)
            {
                MessageBox.Show("已完成Style不能刪除！");
                return;
            }
            base.DeleteCurrent();
        }


        public override void FillToolbar()
        {
            base.FillToolbar();

            FillStyleButton();

            ToolbarManager.AddButton("btnPrintYB", "新樣辦物料明細表", null, "新樣辦物料明細表", new DevExpress.XtraBars.ItemClickEventHandler(btnPrintYBClick));
        }

        private void FillStyleButton()
        {
            //            ToolbarManager.AddButton("btnSizeInput", "SizeInput", null, "SizeInput", new DevExpress.XtraBars.ItemClickEventHandler(SizeInputClick)); 

            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");


            //  if (!_style.SampleOrder.IsComplete)
            {
                ToolbarManager.AddButton("btnCompleteItem", "Complete", null, "Complete", new DevExpress.XtraBars.ItemClickEventHandler(btnCompleteItemClick));
                ToolbarManager.AddButton("btnUnCompleteItem", "UnComplete", null, "UnComplete", new DevExpress.XtraBars.ItemClickEventHandler(btnUnCompleteItemClick));

                if (_style.IsComplete)
                    ToolbarManager.RemoveButton("btnCompleteItem");
                else
                    ToolbarManager.RemoveButton("btnUnCompleteItem");
            }
        }

        public override void ClearToolbar()
        {
            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");
            this.ToolbarManager.RemoveButton("btnPrintYB");
            //this.ToolbarManager.RemoveButton("btnSizeInput");

            base.ClearToolbar();
        }

        void SizeInputClick(object sender, ItemClickEventArgs e)
        {
            if (_style == null)
                return;

            if (!ChildIsCompleted())
            {
                MessageBox.Show("還有【樣板種類】沒有Complete！");
                return;
            }

            ChangeStyle(true);

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillStyleButton();
        }

        void btnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_style == null)
                return;

            if (!ChildIsCompleted())
            {
                MessageBox.Show("還有【樣板種類】沒有Complete！");
                return;
            }

            ChangeStyle(true);

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillStyleButton();
        }

        private void ChangeStyle(bool isComplete)
        {
            DataStore.Db.BeginTransaction();
            try
            {
                _style.IsDirty = true;
                _style.IsComplete = isComplete;
                if (isComplete)
                    _style.CompleteDate = DateTime.Now.ToString();
                else
                    _style.CompleteDate = null;

                base.Save();
                _style.IsDirty = true;
                _style.SampleOrder.Save();

                DataStore.Db.CommitTransaction();
            }
            catch
            {
                DataStore.Db.RollbackTransaction();
                throw;
            }
        }

        bool ChildIsCompleted()
        {
            foreach (StyleSort styleSort in _style.StyleSort)
            {
                if (!styleSort.IsComplete)
                {
                    return false;
                }
            }
            return true;
        }


        void btnUnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_style == null)
                return;

            ChangeStyle(false);

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            FillStyleButton();
        }

        #region 新樣辦物料明細表
        void btnPrintYBClick(object sender, ItemClickEventArgs e)
        {
            PrintYB();
        }

        public void PrintYB()
        {
            PHReport report = new PHReport();
            //report.ReportTitle = "Materials Development Input Forms";
            report.pageKind = System.Drawing.Printing.PaperKind.A4;
            report.margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            report.Landscape = false;
            report.ShowReportHeaderBand = false;
            report.ShowPageHeaderBand = true;
            //report.ShowReportFooterBand = true;
            report.ShowTopMarginBand = false;
            //report.DataSource = detail;
            report.PageHeaderBandCreating += new CreateReportBandEventHandler(report_PageHeaderBandCreating_PrintYB);
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating_PrintYB);
            //report.ReportFooterBandCreating += new CreateReportBandEventHandler(report_ReportFooterBandCreating_PrintYB);
            report.CreateReport();
            report.ShowPreviewDialog();
        }

        private void report_PageHeaderBandCreating_PrintYB(object sender, ReportBandEventArgs e)
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
            aWidth = iClientPageWidth;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "新 樣 辦 物 料 明 細 表", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleCenter, false, 16F, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            y += aHeight;
            e.Y = y;

            #region MyRegion

            //aHeight = 18;
            //int width1 = 80;
            //int width2 = 100;
            //int width3 = 60;
            //#region line 1

            //x = 0;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "客戶樣板款號:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.CustomerStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "PH款號:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.StyleID, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "客戶名稱:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SampleOrder.CustomerID, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "日期:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, DateTime.Now.ToString("yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //y += aHeight;
            //#endregion
            //#region line 2

            //x = 0;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "品牌:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Brand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "組別:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Group, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "季節:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Season, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "産品類別:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.ProductGroup, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //y += aHeight;
            //#endregion
            //#region line 3

            //width3 = 30;
            //x = 0;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "尺碼範圍:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;

            //width1 = 60;
            //width2 = 100;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "均碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "普碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope2, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "大碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope3, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "超碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope4, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "顔色:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = iClientPageWidth - x - 10;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            //x += aWidth;

            //y += aHeight;
            //#endregion

            //int y0 = y + 8;
            //#region Data header
            //width1 = 45;
            //width2 = 45;
            //width3 = 80;
            //int width4 = (iClientPageWidth - width1 - width2 - width3) / 4;

            //y = y0;
            //x = 0;
            //aHeight = 18 * 3;
            //aWidth = width1;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "種", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.TopCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width2;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "類", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.BottomCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "使用位置", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;

            //y = y0;
            //aHeight = 18;
            //aWidth = width4 * 4;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "物    料    名    稱", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            ////x += aWidth;
            //y += aHeight;
            ////int y1 = y;

            //aHeight = 18 * 2;
            //aWidth = width4;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "均  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;

            ////y = y1;
            //aHeight = 18;
            //aWidth = width4 * 3;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "分      碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            ////x += aWidth;
            //y += aHeight;

            //aWidth = width4;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "普  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width4;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "大  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            //aWidth = width4;
            //xrLabel = PHReport.CreateLabel(e.ReportBand, "超  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;

            //y += aHeight;
            //#endregion

            //e.Y = y;
            #endregion

        }
        private void PrintDataHeader(string color, ReportBandEventArgs e, bool newPage, ref int y)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            if (newPage)
            {
                XRPageBreak pb = new XRPageBreak();
                e.ReportBand.Controls.Add(pb);
                pb.Location = new Point(iClientPageWidth, y);
                //y += 1;
            }

            aHeight = 18;
            int width1 = 80;
            int width2 = 100;
            int width3 = 60;
            #region line 1

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "客戶樣板款號:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.CustomerStyle, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "PH款號:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.StyleID, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "客戶名稱:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SampleOrder.CustomerID, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "日期:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, DateTime.Now.ToString("yyyy'/'MM'/'dd"), new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            y += aHeight;
            #endregion
            #region line 2

            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "品牌:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Brand, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "組別:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Group, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "季節:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.Season, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "産品類別:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.ProductGroup, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            y += aHeight;
            #endregion
            #region line 3

            width3 = 30;
            x = 0;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "尺碼範圍:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            width1 = 60;
            width2 = 100;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "均碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "普碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope2, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "大碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope3, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "超碼:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, this._style.SizeScope4, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "顔色:", new Point(x, y), new Size(aWidth, aHeight), BorderSide.None, TextAlignment.MiddleLeft, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = iClientPageWidth - x - 10;
            xrLabel = PHReport.CreateLabel(e.ReportBand, color, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Bottom, TextAlignment.MiddleLeft);
            x += aWidth;

            y += aHeight;
            #endregion

            int y0 = y + 8;
            #region Data header
            width1 = 45;
            width2 = 45;
            width3 = 80;
            int width4 = (iClientPageWidth - width1 - width2 - width3) / 4;

            y = y0;
            x = 0;
            aHeight = 18 * 3;
            aWidth = width1;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "種", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.TopCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width2;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "類", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Top | BorderSide.Bottom, TextAlignment.BottomCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "使用位置", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            y = y0;
            aHeight = 18;
            aWidth = width4 * 4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "物    料    名    稱", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            y += aHeight;
            //int y1 = y;

            aHeight = 18 * 2;
            aWidth = width4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "均  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            //y = y1;
            aHeight = 18;
            aWidth = width4 * 3;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "分      碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Right, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            //x += aWidth;
            y += aHeight;

            aWidth = width4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "普  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "大  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Top | BorderSide.Bottom, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;
            aWidth = width4;
            xrLabel = PHReport.CreateLabel(e.ReportBand, "超  碼", new Point(x, y), new Size(aWidth, aHeight), BorderSide.All, TextAlignment.MiddleCenter, false, PHReport.DefaultFontSize, PHReport.DefaultFontFamily, FontStyle.Bold);
            x += aWidth;

            y += aHeight;
            #endregion
        }
        private void report_DetailBandCreating_PrintYB(object sender, ReportBandEventArgs e)
        {
            #region field, init value
            int aHeight = 0;
            int aWidth = 0;
            int x = 0;
            int y = e.Y;
            XRLabel xrLabel;
            int iClientPageWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            #endregion

            int aHeight0 = 18;
            aHeight = aHeight0;

            int width1 = 45;
            int width2 = 45;
            int width3 = 80;
            int width4 = (iClientPageWidth - width1 - width2 - width3) / 4;
            int iCount = 0;

            #region 顔色分組(new page)

            List<StyleBOM> colorDistinct = new List<StyleBOM>();
            foreach (StyleBOM c in this._style.StyleBom)
            {
                if (colorDistinct.Find(delegate(StyleBOM c1) { return c.ColorID == c1.ColorID; }) != null) continue;
                colorDistinct.Add(c);
            }
            int j = 0;
            foreach (StyleBOM c in colorDistinct)
            {
                j++;
                PrintDataHeader(c.ColorID, e, (j > 1), ref y);

                EventList2<StyleBOM> colorAllDetails = this._style.StyleBom.FindAll(delegate(StyleBOM c1) { return c.ColorID == c1.ColorID; });

                #region 大類

                List<StyleBOM> bigDistinctClass = new List<StyleBOM>();
                foreach (StyleBOM b in colorAllDetails)
                {
                    if (bigDistinctClass.Find(delegate(StyleBOM b1) { return b.MaterielGroup1 == b1.MaterielGroup1; }) != null) continue;
                    bigDistinctClass.Add(b);
                }

                foreach (StyleBOM b in bigDistinctClass)
                {
                    EventList2<StyleBOM> bigClassAllDetails = colorAllDetails.FindAll(delegate(StyleBOM b1) { return b.MaterielGroup1 == b1.MaterielGroup1; });
                    iCount = bigClassAllDetails.Count;
                    aHeight = aHeight0 * iCount;
                    x = 0;
                    aWidth = width1;
                    xrLabel = PHReport.CreateLabel(e.ReportBand, b.MaterielGroup1, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter);
                    x += aWidth;
                    int xS = x;//小類的x開始坐標

                    #region 小類

                    List<StyleBOM> smallDistinctClass = new List<StyleBOM>();
                    foreach (StyleBOM s in bigClassAllDetails)
                    {
                        if (smallDistinctClass.Find(delegate(StyleBOM s1) { return s.MaterielGroup1 == s1.MaterielGroup1 && s.MaterielGroup2 == s1.MaterielGroup2; }) != null) continue;
                        smallDistinctClass.Add(s);
                    }
                    foreach (StyleBOM s in smallDistinctClass)
                    {
                        x = xS;
                        EventList2<StyleBOM> smallClassAllDetails = bigClassAllDetails.FindAll(delegate(StyleBOM s1) { return s.MaterielGroup1 == s1.MaterielGroup1 && s.MaterielGroup2 == s1.MaterielGroup2; });
                        iCount = smallClassAllDetails.Count;
                        aHeight = aHeight0 * iCount;
                        aWidth = width2;
                        xrLabel = PHReport.CreateLabel(e.ReportBand, s.MaterielGroup2, new Point(x, y), new Size(aWidth, aHeight), BorderSide.Left | BorderSide.Bottom, TextAlignment.MiddleCenter);
                        x += aWidth;

                        int xP = x;//使用位置的x開始坐標

                        #region 使用位置

                        int i = 0;
                        foreach (StyleBOM p in smallClassAllDetails)
                        {
                            i++;
                            BorderSide bs = iCount == i ? BorderSide.Left | BorderSide.Bottom : BorderSide.Left;
                            x = xP;
                            aHeight = aHeight0;
                            aWidth = width3;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, p.MaterielGroup3, new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            int width41 = width4 / 2;
                            int width42 = width4 - width41;

                            #region 均碼

                            bs = iCount == i ? BorderSide.Left | BorderSide.Bottom : BorderSide.Left;
                            aWidth = width41;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, p.MaterielName1, new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            bs = iCount == i ? BorderSide.Bottom : BorderSide.None;
                            aWidth = width42;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("布封:{0}", p.MaterielName11), new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            #endregion
                            #region 普碼
                            aWidth = width41;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, p.MaterielName2, new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            aWidth = width42;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("布封:{0}", p.MaterielName12), new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;
                            #endregion
                            #region 大碼
                            aWidth = width41;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, p.MaterielName3, new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            aWidth = width42;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("布封:{0}", p.MaterielName13), new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;
                            #endregion
                            #region 超碼
                            aWidth = width41;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, p.MaterielName4, new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;

                            bs = iCount == i ? BorderSide.Bottom | BorderSide.Right : BorderSide.Right;
                            aWidth = width42;
                            xrLabel = PHReport.CreateLabel(e.ReportBand, string.Format("布封:{0}", p.MaterielName14), new Point(x, y), new Size(aWidth, aHeight), bs, TextAlignment.MiddleLeft);
                            x += aWidth;
                            #endregion

                            y += aHeight;
                        }

                        #endregion
                    }

                    #endregion

                }


                #endregion

            }

            #endregion

            e.Y = y;
        }

        #endregion
    }
}
