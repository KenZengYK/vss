using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.BasicInfo.BO;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.Utils.Drawing;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class TimeFrameIIListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public TimeFrameIIListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);
            colStartPoint.AppearanceHeader.BackColor = Color.FromArgb(235, 241, 222);

            this.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.BindingSource.DataSource = (DataContext as BasicInfoDataContext).TimeFrameIIs.OrderBy(p => p.SeqNo);
            this.EditorTypeName = typeof(TimeFrameIIDetailForm).FullName;
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveStartPoint = "";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                TimeFrameII obj = bandedGridView1.GetRow(i) as TimeFrameII;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveStartPoint = obj.StartPoint;
                }
                else
                {
                    if (obj.StartPoint == SaveStartPoint)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveStartPoint = obj.StartPoint;
                    }
                }
            }
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<TimeFrameII> lists = bandedGridView1.FilteredList().Cast<TimeFrameII>();

                switch (item.FieldName)
                {
                    case "SeqNo":
                        e.TotalValue = "Ttl";
                        break;

                    case "StartPoint":
                        e.TotalValue = lists.Select(p => p.StartPoint).Distinct().Count();
                        break;

                    case "EndPoint":
                        e.TotalValue = lists.Select(p => p.EndPoint).Distinct().Count();
                        break;

                    case "Buyer":
                        e.TotalValue = lists.Select(p => p.Buyer).Distinct().Count();
                        break;

                    case "TradeMethod":
                        e.TotalValue = lists.Select(p => p.TradeMethod).Distinct().Count();
                        break;

                    case "TransitMode":
                        e.TotalValue = lists.Select(p => p.TransitMode).Distinct().Count();
                        break;

                    case "StartPointFullDescription":
                        e.TotalValue = lists.Select(p => p.StartPointFullDescription).Distinct().Count();
                        break;

                    case "ReceivingEndPoint":
                        e.TotalValue = lists.Select(p => p.ReceivingEndPoint).Distinct().Count();
                        break;
                }

            }
        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            //BandedGridView gridView = sender as BandedGridView;
            //string SeqNo1 = gridView.GetRowCellValue(e.RowHandle1, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "SeqNo").ToString();
            //string SeqNo2 = gridView.GetRowCellValue(e.RowHandle2, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "SeqNo").ToString();

            //string StartPoint1 = gridView.GetRowCellValue(e.RowHandle1, "StartPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "StartPoint").ToString();
            //string StartPoint2 = gridView.GetRowCellValue(e.RowHandle2, "StartPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "StartPoint").ToString();

            //string EndPoint1 = gridView.GetRowCellValue(e.RowHandle1, "EndPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "EndPoint").ToString();
            //string EndPoint2 = gridView.GetRowCellValue(e.RowHandle2, "EndPoint") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "EndPoint").ToString();

            //string Buyer1 = gridView.GetRowCellValue(e.RowHandle1, "Buyer") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "Buyer").ToString();
            //string Buyer2 = gridView.GetRowCellValue(e.RowHandle2, "Buyer") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "Buyer").ToString();

            //string TradeMethod1 = gridView.GetRowCellValue(e.RowHandle1, "TradeMethod") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "TradeMethod").ToString();
            //string TradeMethod2 = gridView.GetRowCellValue(e.RowHandle2, "TradeMethod") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "TradeMethod").ToString();

            //string SeqNo1 = gridView.GetRowCellValue(e.RowHandle1, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "SeqNo").ToString();
            //string SeqNo2 = gridView.GetRowCellValue(e.RowHandle2, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "SeqNo").ToString();

            //string SeqNo1 = gridView.GetRowCellValue(e.RowHandle1, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle1, "SeqNo").ToString();
            //string SeqNo2 = gridView.GetRowCellValue(e.RowHandle2, "SeqNo") == null ? "" : gridView.GetRowCellValue(e.RowHandle2, "SeqNo").ToString();


        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;

            Color colorGray = Color.FromArgb(220, 240, 204);
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

            Color colorGray = Color.FromArgb(220, 240, 204);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);
            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);

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

            if (e.Column.FieldName == "StartPoint")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90); //設置特別的顏色
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



    }
}
