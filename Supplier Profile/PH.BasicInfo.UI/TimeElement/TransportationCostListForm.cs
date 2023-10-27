using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using DevExpress.Utils.Drawing;
using PH.BasicInfo.UI;
using DevExpress.XtraBars;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class TransportationCostListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        IEnumerable<SupplierProfile> DataList;

        public TransportationCostListForm()
        {
            InitializeComponent();
        }

        public TransportationCostListForm(string AParam)
            : this()
        {
            if (AParam == "OnlyShowActvieSupplier")
            {
                BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
                DataList = db.SupplierProfiles.Where(p => (p.DeleteFlag ?? false) == false);
                //DataList = db.SupplierProfiles.Where(p => (p.DeleteFlag ?? false) == false && p.Active == "1");

                //int a = DataList.Count();

                foreach (var obj in DataList)
                {
                    //有SupplierGroup但没有勾选AssociatePartner的，相当于没有SupplierGroup
                    if (!string.IsNullOrEmpty(obj.SupplierGroup) && (obj.AssociatePartner ?? false) == false)
                    {
                        obj.SupplierGroup = null;
                    }
                }
            }
        }

        //public TransportationCostListForm(IEnumerable<SupplierProfile> ADataList)
        //    : this()
        //{
        //    foreach (var obj in ADataList)
        //    {
        //        //有SupplierGroup但没有勾选AssociatePartner的，相当于没有SupplierGroup
        //        if (!string.IsNullOrEmpty(obj.SupplierGroup) && (obj.AssociatePartner ?? false) == false)
        //        {
        //            obj.SupplierGroup = null;
        //        }
        //    }

        //    DataList = ADataList;
        //}

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        public override void DataBind()
        {
            base.DataBind();

            //this.AlwaysShowDesignLayout = true;

            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnOpen.Visibility = BarItemVisibility.Never;

            PHPlatformMiscDataContext BasicInfoDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            repositoryItemLookUpEdit_Status.Properties.DataSource = BasicInfoDB.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierStatus").OrderBy(E => E.DataCode);

            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);

            this.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            List<TransportationCostResult> lists = new List<TransportationCostResult>();

            foreach (SupplierProfile s in DataList)
            {
                if (s.IncontermsTransits.Count() == 0)
                {
                    TransportationCostResult obj = new TransportationCostResult();
                    obj.ERPSupplier = s.ERPSupplier;
                    obj.ShortName = s.ShortName;
                    obj.Address = s.Address;
                    obj.SuppPrdnSite = s.SuppPrdnSite;
                    obj.SupplierGroup = s.SupplierGroup;
                    obj.SupplierGroupMainDiff = s.SupplierGroupMainDiff;
                    obj.BusinessNature = s.BusinessNature;
                    obj.TradeMethod = s.TradeMethod;
                    obj.Currency = s.Currency;
                    obj.ApprovalPerson = s.ApprovalPerson;
                    obj.CustDependent = s.CustDependent;
                    obj.StockInterest = s.StockInterest;
                    obj.BankCharge = s.BankCharge;
                    obj.EstInterest = s.EstInterest;
                    obj.StandardDev = s.StandardDev;
                    obj.PaymentTerms = s.PaymentTerms;
                    obj.UnofficiaPaymentTerms = s.UnofficiaPaymentTerms;
                    obj.SupplierFactoryCode = s.SupplierFactoryCode;
                    obj.SupplierName = s.SupplierName;
                    obj.BuyerCode = s.BuyerCode;
                    obj.Active = s.Active;

                    obj.WarehourseOrTransitModeFlag = null;

                    lists.Add(obj);
                }
                else
                {
                    foreach (IncontermsTransit t in s.IncontermsTransits)
                    {
                        if (!t.ToEffectivedDate.HasValue || t.ToEffectivedDate.Value >= DateTime.Now.Date) //日期过期的不取出
                        {
                            TransportationCostResult obj = new TransportationCostResult();
                            obj.ERPSupplier = s.ERPSupplier;
                            obj.ShortName = s.ShortName;
                            obj.Address = s.Address;
                            obj.SuppPrdnSite = s.SuppPrdnSite;
                            obj.SupplierGroup = s.SupplierGroup;
                            obj.SupplierGroupMainDiff = s.SupplierGroupMainDiff;
                            obj.BusinessNature = s.BusinessNature;
                            obj.TradeMethod = s.TradeMethod;
                            obj.Currency = s.Currency;
                            obj.ApprovalPerson = s.ApprovalPerson;
                            obj.CustDependent = s.CustDependent;
                            obj.StockInterest = s.StockInterest;
                            obj.BankCharge = s.BankCharge;
                            obj.EstInterest = s.EstInterest;
                            obj.StandardDev = s.StandardDev;
                            obj.PaymentTerms = s.PaymentTerms;
                            obj.UnofficiaPaymentTerms = s.UnofficiaPaymentTerms;
                            obj.SupplierFactoryCode = s.SupplierFactoryCode;
                            obj.SupplierName = s.SupplierName;
                            obj.BuyerCode = s.BuyerCode;
                            obj.Active = s.Active;

                            obj.Incoterms = t.Incoterms;
                            obj.TransitPointCode = t.TransitPointCode;
                            obj.TransitPointRegionCode = t.TransitPointRegionCode;
                            obj.PHFactories = t.PHFactories;
                            obj.PointofDestination = t.PointofDestination;
                            obj.TransitMode = t.TransitMode;
                            obj.DeliveryRouting = t.DeliveryRouting;
                            obj.TimeFrame1Wet = t.TimeFrame1Wet;
                            obj.TimeFrame = t.TimeFrame;

                            obj.Point2PortOfOriginCost = t.Point2PortOfOriginCost;
                            obj.FreightCost = t.FreightCost;
                            obj.Port2PointOfDestinationCost = t.Port2PointOfDestinationCost;
                            obj.PointOfDestination2ProductionSiteCost = t.PointOfDestination2ProductionSiteCost;

                            obj.Standard = t.Standard1;
                            obj.NonStandard = t.NonStandard1;

                            //计算Any WH/Mde
                            // 1. 如果一个Supplier有多个Our Whse Site Cde，显示 "W", 
                            // 2. 如果一个Supplier有多个TransitMode，显示："M"
                            // 3. 如果一个Supplier有多个Our Whse Site Cde，又有多个TransitMode, 显示："W+M"
                            // 4. 如果TF1 Tranist Windows只有一行，则显示为空
                            if (s.IncontermsTransits.Count() == 1)
                            {
                                obj.WarehourseOrTransitModeFlag = null;
                            }
                            else
                            {
                                int WHCount = s.IncontermsTransits.Select(p => p.PHFactories).Distinct().Count();
                                int TransitModeCount = s.IncontermsTransits.Select(p => p.TransitMode).Distinct().Count();
                                string Flag = null;

                                if (WHCount > 1) Flag = "W";
                                if (TransitModeCount > 1)
                                {
                                    Flag = string.IsNullOrEmpty(Flag) ? "M" : "W+M";
                                }

                                obj.WarehourseOrTransitModeFlag = Flag;
                            }

                            lists.Add(obj);
                        }
                    }
                }
            }

            this.BindingSource.DataSource = lists.OrderBy(p => p.SupplierGroup).ThenBy(p => p.ERPSupplier).ThenBy(p => p.PHFactories).ThenBy(p => p.Incoterms);
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

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveERPSupplier = "0";
            int SaveOrderLine = 0;
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                TransportationCostResult obj = bandedGridView1.GetRow(i) as TransportationCostResult;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveERPSupplier = obj.ERPSupplier;
                }
                else
                {
                    if (obj.ERPSupplier == SaveERPSupplier)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveERPSupplier = obj.ERPSupplier;
                    }
                }
            }
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();

            colTransitPointRegionCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            //string ERPSupplier1 = (bandedGridView1.GetRowCellValue(e.RowHandle1, "ERPSupplier") == null ? "" : (bandedGridView1.GetRowCellValue(e.RowHandle1, "ERPSupplier").ToString()));
            //string ERPSupplier2 = (bandedGridView1.GetRowCellValue(e.RowHandle2, "ERPSupplier") == null ? "" : (bandedGridView1.GetRowCellValue(e.RowHandle2, "ERPSupplier").ToString()));

            //switch (e.Column.FieldName)
            //{
            //    case "ERPSupplier":
            //    case "ShortName":
            //    case "Address":
            //    case "SuppPrdnSite":
            //    case "SupplierGroup":
            //    case "BusinessNature":
            //    case "TradeMethod":
            //        e.Merge = ERPSupplier1 == ERPSupplier2;
            //        e.Handled = true;
            //        break;

            //    default:
            //        e.Merge = false;
            //        e.Handled = true;
            //        break;
            //}
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<TransportationCostResult> lists = bandedGridView1.FilteredList().Cast<TransportationCostResult>();

                switch (item.FieldName)
                {
                    case "ERPSupplier":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ERPSupplier)).Select(p => p.ERPSupplier).Distinct().Count();
                        break;

                    case "BusinessNature":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.BusinessNature)).Select(p => p.BusinessNature).Distinct().Count();
                        break;

                    case "TradeMethod":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.TradeMethod)).Select(p => p.TradeMethod).Distinct().Count();
                        break;

                    case "Incoterms":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.Incoterms)).Select(p => p.Incoterms).Distinct().Count();
                        break;

                    case "PHFactories":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.PHFactories)).Select(p => p.PHFactories).Distinct().Count();
                        break;

                    case "PointofDestination":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.PointofDestination)).Select(p => p.PointofDestination).Distinct().Count();
                        break;

                    case "TransitMode":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.TransitMode)).Select(p => p.TransitMode).Distinct().Count();
                        break;

                    case "DeliveryRouting":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.DeliveryRouting)).Select(p => p.DeliveryRouting).Distinct().Count();
                        break;

                    case "TransitPointRegionCode":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.TransitPointRegionCode)).Select(p => p.TransitPointRegionCode).Distinct().Count();
                        break;

                }

            }
        }

    }

    public class TransportationCostResult
    {
        public string OddEvenRowFlag { get; set; }

        public string ERPSupplier { get; set; }
        public string ShortName { get; set; }
        public string Address { get; set; }
        public string SuppPrdnSite { get; set; }
        public string SupplierGroup { get; set; }
        public string BusinessNature { get; set; }
        public string TradeMethod { get; set; }

        public string Incoterms { get; set; }
        public string TransitPointCode { get; set; }
        public string TransitPointRegionCode { get; set; }
        public string PHFactories { get; set; }
        public string PointofDestination { get; set; }
        public string TransitMode { get; set; }
        public string DeliveryRouting { get; set; }
        public int? TimeFrame1Wet { get; set; }
        public int? TimeFrame { get; set; }

        public decimal? Point2PortOfOriginCost { get; set; }
        public decimal? FreightCost { get; set; }
        public decimal? Port2PointOfDestinationCost { get; set; }
        public decimal? PointOfDestination2ProductionSiteCost { get; set; }
        public decimal? TotalCost
        {
            get
            {
                return (Point2PortOfOriginCost ?? 0) + (FreightCost ?? 0) + (Port2PointOfDestinationCost ?? 0) + (PointOfDestination2ProductionSiteCost ?? 0);
            }
        }

        public string Currency { get; set; }
        public string Standard { get; set; }
        public string NonStandard { get; set; }
        public string ApprovalPerson { get; set; }
        public string WarehourseOrTransitModeFlag { get; set; }
        public string CustDependent { get; set; }
        public string SupplierGroupMainDiff { get; set; }
        public decimal? StockInterest { get; set; }
        public decimal? BankCharge { get; set; }
        public decimal? EstInterest { get; set; }
        public decimal? StandardDev { get; set; }
        public string PaymentTerms { get; set; }
        public string UnofficiaPaymentTerms { get; set; }
        public string SupplierFactoryCode { get; set; }
        public string SupplierName { get; set; }
        public string BuyerCode { get; set; }
        public string Active { get; set; }
    }
}
