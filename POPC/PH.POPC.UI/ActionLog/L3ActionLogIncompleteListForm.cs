using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.POPC.BO;
using PH.Platform.ExtendLibrary;
using PH.BasicInfo.BO;
using DevExpress.Utils.Drawing;
using DevExpress.XtraGrid;

namespace PH.POPC.UI.ActionLog
{
    public partial class L3ActionLogIncompleteListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string _Param;
        public L3ActionLogIncompleteListForm()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            //this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            //this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);
        }

        public L3ActionLogIncompleteListForm(string AParam)
            : this()
        {
            _Param = AParam;
        }


        public override void DataBind()
        {
            base.DataBind();

            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);
            bandedGridView1.Columns["TotalSplitMode"].AppearanceHeader.BackColor = Color.Moccasin;
            bandedGridView1.Columns["RCCode"].AppearanceHeader.BackColor = Color.Moccasin;
            bandedGridView1.Columns["ActionLogCategory"].AppearanceHeader.BackColor = Color.Moccasin;

            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();
            PrepareData();

            this.bandedGridView1.OptionsBehavior.Editable = true;
            InitFormNavigator();
        }

        private void PrepareData()
        {
            List<POChangesMonitor> AllDataList;

            POPCDataContext db = DataContext as POPCDataContext;
            db = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            db.CommandTimeout = 1000;
            db.Connection.Open();
            db.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            var list = db.POChangesMonitors.Where(p =>
              (p.POColorSizeDetail.VersionFlag ?? false) &&
              (p.POColorSizeDetail.PODetail.POHeader.Status != "-1") &&  //Cancel的PO不显示出来
              (p.POColorSizeDetail.PODetail.POHeader.Flag == null || p.POColorSizeDetail.PODetail.POHeader.Flag == "") &&
              (p.POColorSizeDetail.PODetail.Flag == null || p.POColorSizeDetail.PODetail.Flag == "") &&
              (p.ActionLogID != null && p.ActionLogID != ""));

            if (_Param == "Incomplete")
            {
                //list = list.Where(p => !p.ActionLogCmplDate.HasValue);
                list = list.Where(p => p.ActionLogCmpl == null || p.ActionLogCmpl == "N");
            }
            else if (_Param == "Cmpl") //Action Log已经Complete, 但没有Stock In
            {
                //list = list.Where(p => p.ActionLogCmplDate.HasValue && (p.StockInQty ?? 0) == 0);
                list = list.Where(p => p.ActionLogCmpl == "Y" && (p.StockInQty ?? 0) == 0);
            }
            else if (_Param == "Stk-in") //Action Log已经Complete, 并已Stock In， 但没有做Invoice Matching
            {
                //list = list.Where(p => p.ActionLogCmplDate.HasValue && (p.StockInQty ?? 0) > 0 && !p.InvoiceDate.HasValue);
                list = list.Where(p => p.ActionLogCmpl == "Y" && (p.StockInQty ?? 0) > 0 && !p.InvoiceDate.HasValue);
            }
            else if (_Param == "L6") //Action Log已经Complete, 已Stock In， 已做Invoice Matching
            {
                //list = list.Where(p => p.ActionLogCmplDate.HasValue && (p.StockInQty ?? 0) > 0 && p.InvoiceDate.HasValue && p.InvoiceMatchingDate >= DateTime.Now.Date.AddMonths(-1));
                list = list.Where(p => p.ActionLogCmpl == "Y" && (p.StockInQty ?? 0) > 0 && p.InvoiceDate.HasValue && p.InvoiceMatchingDate >= DateTime.Now.Date.AddMonths(-1));
            }

            //因为按TF2's Recv'g End Pt(Mat'l Standby) as at这个条件查询时，有可能将同一张Order Line，同一水，但因为Time Frame 2回料到工厂的日期不同，
            //而被过滤掉，所以计算水数的时候，需要取原始取出集合的数据来计算, 由David增加 2022-06-09
            List<TempPOChangesMonitorClass> OriginalList = list.Select(p => new TempPOChangesMonitorClass { PONO = p.PONO, OrderLine = p.OrderLine, ColorCode = p.ColorCode, SplitNo = p.SplitNo }).ToList();

            //得到按PONO + Order Line + Color汇总的数据
            AllDataList = list.ToList();

            //由于计算WO FW Start Date和WO Ex-fty Date放在BO中太慢，所以改为在取数时直接计算出来，2022-05-23 由 David 修改
            foreach (var obj in AllDataList)
            {
                if (!obj.WOSeqNo.HasValue)
                {
                    obj.WOSeqNo = 1;
                }

                string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                DataTable dt = (DataContext as POPCDataContext).ExecuteDataTable(SqlStr, "dt");
                if (dt.Rows.Count > 0)
                {
                    obj.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                    obj.WOExftyDate = dt.Rows[0]["WOExftyDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOExftyDate"]);
                    obj.TotalWO = Convert.ToInt32(dt.Rows[0]["TotalWO"]);
                    obj.ChosenWO = dt.Rows[0]["ChosenWO"].ToString();
                }

                if (obj.GRNDate != null)
                {
                    string SqlStrActDate = string.Format("exec sp_GetPOActualTransitDateInfo '{0}' ,'{1}' ", obj.PONO, obj.GRNDate);
                    DataTable dtActDate = (DataContext as POPCDataContext).ExecuteDataTable(SqlStrActDate, "dt");
                    if (dtActDate.Rows.Count > 0)
                    {

                        obj.POActualTransitDate = string.IsNullOrEmpty(dtActDate.Rows[0]["ActualTransitDate"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dtActDate.Rows[0]["ActualTransitDate"].ToString());
                        obj.HDOReleasedDate = string.IsNullOrEmpty(dtActDate.Rows[0]["HDOReleasedDate"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dtActDate.Rows[0]["HDOReleasedDate"].ToString());
                    }
                }

                if (obj.HDOReleasedDate.HasValue) //如果有HDO Release date时，Time Frame II Change Date要减掉 Handing HKCSS的天数
                {
                    TimeFrameII TF2 = obj.TimeFrameIIObject;
                    obj.TimeFrame2Change = TF2 == null ? obj.TimeFrame2Change : TF2.LeadTimeDay - TF2.HandlingHKCCS;
                }
            }

            var SummaryList = AllDataList.GroupBy(p => new
            {
                PONO = p.PONO,
                OrderLine = p.OrderLine,
                ColorCode = p.ColorCode,
                SplitNo = p.SplitNo
            })
            .Select(g => new
            {
                PONO = g.Key.PONO,
                OrderLine = g.Key.OrderLine,
                ColorCode = g.Key.ColorCode,
                SplitNo = g.Key.SplitNo,

                TotalSupplierPOQty = g.Sum(q => (q.SupplierPOQty ?? 0)),
                TotalSupplierOutstandingQty = g.Sum(q => q.SupplierOutstandingQty),
                TotalPOBalancePercent = g.Sum(q => q.SupplierPOQty) == 0 ? 0 : (g.Sum(q => q.SupplierOutstandingQty) / g.Sum(q => q.SupplierPOQty)),

                TotalSplitQty = g.Sum(q => q.SplitQty ?? 0),
                TotalGRNQty = g.Sum(q => q.GRNQty ?? 0),
                TotalRCQty = g.Sum(q => q.RCQty ?? 0),
                TotalStockInQty = g.Sum(q => q.StockInQty ?? 0),
                TotalReceivedQty = g.Sum(q => q.ReceivedQty ?? 0),

                TotalGlossQty = g.Sum(q => q.GrossQty ?? 0),
                TotalNetQty = g.Sum(q => q.NetQty ?? 0),
                TotalStockInUseful = g.Sum(q => q.GrossQty ?? 0) == 0 ? 0 : (g.Sum(q => q.NetQty ?? 0) / g.Sum(q => q.GrossQty ?? 0) * 100.00),

                TotalSizeCode = g.Select(s => s.SizeCode).Distinct().Count(),
                TotalSizeDesc = g.Select(s => s.SizeDesc).Distinct().Count(),
                TotalFitCode = g.Select(s => s.FitCode).Distinct().Count(),
                TotalFitDesc = g.Select(s => s.FitDesc).Distinct().Count(),

                TotalHowManyLot = OriginalList.Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode).Max(p => p.SplitNo) == 1 ? "--" :
                  string.Format("{0}/{1}", g.Key.SplitNo,
                  OriginalList.Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode).Max(p => p.SplitNo)),


                ////处理 Action Log
                //ActionLogList = AllDataList
                //  .Where(p => p.PONO == g.Key.PONO && p.OrderLine == g.Key.OrderLine && p.ColorCode == g.Key.ColorCode && p.SplitNo == g.Key.SplitNo && p.ActionLogOID.HasValue)
                //  .OrderBy(p => p.ActionLogOID)
                //  .Select(p => new TempActionLogClass
                //  {
                //      OID = p.ActionLogOID,
                //      SeqNoShow = Convert.ToString(p.ActionLogSeqNo).Substring(4, 4),
                //      Group = p.ActionLogGroup,
                //      TargetDate = p.ActionLogCompletionStage_Target,
                //      RevisedDate = p.ActionLogCompletionStage_Revised,
                //      CmplDate = p.ActionLogCompletionStage_Cmpl
                //  }).Distinct(new GroupActionLogComparer()).ToList()

            }).ToList();

            List<POChangesMonitorSummary> ResultList = new List<POChangesMonitorSummary>();
            foreach (var o in SummaryList)
            {
                POChangesMonitorSummary obj = new POChangesMonitorSummary();

                var SourceObj = AllDataList.FirstOrDefault(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo == o.SplitNo);
                CopyProperties<POChangesMonitor, POChangesMonitorSummary>(SourceObj, obj);

                obj.PONO = o.PONO;
                obj.OrderLine = o.OrderLine;
                obj.ColorCode = o.ColorCode;

                obj.TotalSupplierPOQty = o.TotalSupplierPOQty;
                obj.TotalSupplierOutstandingQty = o.TotalSupplierOutstandingQty;
                obj.TotalPOBalancePercent = o.TotalPOBalancePercent;

                obj.TotalSplitQty = o.TotalSplitQty;   // - o.TotalRCQty;
                obj.TotalGRNQty = o.TotalGRNQty;
                obj.TotalRCQty = o.TotalRCQty;
                obj.TotalStockInQty = o.TotalStockInQty;
                obj.TotalReceivedQty = o.TotalReceivedQty;
                obj.TotalCummQty = SummaryList.Where(p => p.PONO == o.PONO && p.OrderLine == o.OrderLine && p.ColorCode == o.ColorCode && p.SplitNo <= o.SplitNo).Sum(p => p.TotalSplitQty);

                obj.TotalGlossQty = o.TotalGlossQty;
                obj.TotalNetQty = o.TotalNetQty;
                obj.TotalStockInUseful = o.TotalStockInUseful;

                obj.TotalSizeCode = o.TotalSizeCode;
                obj.TotalSizeDesc = o.TotalSizeDesc;
                obj.TotalFitCode = o.TotalFitCode;
                obj.TotalFitDesc = o.TotalFitDesc;
                obj.TotalHowManyLot = o.TotalHowManyLot;

                //obj.ActionLogList = o.ActionLogList;

                ResultList.Add(obj);
            }

            //this.BindingSource.DataSource = ResultList.ToList().OrderBy(p => p.ActionLogSeqNo).ThenBy(p => p.ActionLogHeader_TargetDate); 

            //Joe提出的： 修改一下Icmpl action log中记录的排序方式，先排PO, 再排Lne, 再排clr cde, 再排# of split, 最后才排 action log seq#. 目前应该是按actuon log seq# 排的吧？        
            this.BindingSource.DataSource = ResultList.ToList().OrderBy(p => p.PONO).ThenBy(p => p.OrderLine).ThenBy(p => p.ColorCode).ThenBy(p => p.TotalHowManyLot).ThenBy(p => p.ActionLogSeqNo);
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        public void CopyProperties<Source, Dest>(Source source, Dest dest)
        {
            var sourceProps = typeof(Source).GetProperties().Where(x => x.CanRead).ToList();
            var destProps = typeof(Dest).GetProperties()
                    .Where(x => x.CanWrite)
                    .ToList();

            foreach (var sourceProp in sourceProps)
            {
                if (destProps.Any(x => x.Name == sourceProp.Name))
                {
                    var p = destProps.First(x => x.Name == sourceProp.Name);
                    if (p.CanWrite)
                    {
                        p.SetValue(dest, sourceProp.GetValue(source, null), null);
                    }
                }
            }
        }

        private void barButtonItem_ReviewActionLog_ItemClick(object sender, ItemClickEventArgs e)
        {
            POChangesMonitorSummary obj = this.BindingSource.Current as POChangesMonitorSummary;
            if (obj != null)
            {
                if (string.IsNullOrEmpty(obj.ActionLogID)) return;
                bool NeedProcessSplit = _Param == "Incomplete";
                PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(obj.ActionLogID, null, NeedProcessSplit);
                frmAlertLog.ShowDialog();
            }
        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "RWO_DaysDiff")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff") == null) return;
                object RWO_DaysDiff = bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff");
                object ChosenWO = bandedGridView1.GetRowCellValue(e.RowHandle, "ChosenWO");

                if (RWO_DaysDiff == null) return;

                int iRWO_DaysDiff = Convert.ToInt32(RWO_DaysDiff);
                string sChosenWO = ChosenWO == null ? "" : ChosenWO.ToString();

                if (iRWO_DaysDiff < 0)
                {
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if ((iRWO_DaysDiff < 1 || iRWO_DaysDiff > 28))
                //  if (sChosenWO.StartsWith("W") && (iRWO_DaysDiff < 1 || iRWO_DaysDiff > 28))
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "AffectDays")  //應Joe要求，AffectDays小於零變紅 add by shulin 20220923
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "AffectDays") == null) return;
                object AffectDays = bandedGridView1.GetRowCellValue(e.RowHandle, "AffectDays");

                if (AffectDays == null) return;
                int iAffectDays = Convert.ToInt32(AffectDays);

                if (iAffectDays < 0)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SavePONO = "0";
            int SaveOrderLine = 0;
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                POChangesMonitorSummary obj = bandedGridView1.GetRow(i) as POChangesMonitorSummary;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SavePONO = obj.PONO;
                    SaveOrderLine = obj.OrderLine;
                }
                else
                {
                    if (obj.PONO == SavePONO && obj.OrderLine == SaveOrderLine)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SavePONO = obj.PONO;
                        SaveOrderLine = obj.OrderLine;
                    }
                }
            }
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
            //this.bandedGridView1.OptionsView.ShowFooter = true;
            //this.colBuyerCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colPONO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colFactory.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colProjectNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colItemCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colPurchaseOfficer.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colSupplier.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            //this.colSupplierReference.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;

        }

        private void btnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            //L3ActionLogIncompleteReport rptL3ActionLogIncomplete = new L3ActionLogIncompleteReport(bandedGridView1.FilteredList());
            //rptL3ActionLogIncomplete.ShowPreview();
        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            Color colorGray = Color.FromArgb(217, 217, 217);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    break;
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            if (e.Band.Name == "gridBand27")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);
            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            if (e.Column.FieldName == "TotalSplitMode" || e.Column.FieldName == "RCCode" || e.Column.FieldName == "ActionLogCategory") //設置特別的顏色
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);

            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<POChangesMonitorSummary> lists = bandedGridView1.FilteredList().Cast<POChangesMonitorSummary>();

                switch (item.FieldName)
                {
                    case "BuyerCode":
                        e.TotalValue = lists.Select(p => p.BuyerCode).Distinct().Count();
                        break;

                    case "PONO":
                        e.TotalValue = lists.Select(p => p.PONO).Distinct().Count();
                        break;

                    case "Factory":
                        e.TotalValue = lists.Select(p => p.Factory).Distinct().Count();
                        break;

                    case "ProjectNo":
                        e.TotalValue = lists.Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "ItemCode":
                        e.TotalValue = lists.Select(p => p.ItemCode).Distinct().Count();
                        break;

                    case "PurchaseOfficer":
                        e.TotalValue = lists.Select(p => p.PurchaseOfficer).Distinct().Count();
                        break;

                    case "Supplier":
                        e.TotalValue = lists.Select(p => p.Supplier).Distinct().Count();
                        break;

                    case "ColorCode":
                        e.TotalValue = lists.Select(p => p.ColorCode).Distinct().Count();
                        break;

                    case "SupplierReference":
                        e.TotalValue = lists.Select(p => p.SupplierReference).Distinct().Count();
                        break;
                }
            }
        }



    }
}
