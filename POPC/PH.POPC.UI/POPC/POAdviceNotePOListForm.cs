using System.Collections.Generic;
using System.Linq;
using DevExpress.XtraGrid;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.POPC.BO;
using System.Windows.Forms;
using System;
using PH.FabricInspection.BO;
using System.Drawing;
using PH.Platform.Misc.BO;
using DevExpress.Utils.Drawing;
using System.Data;

namespace PH.POPC.UI.POPC
{
    public partial class POAdviceNotePOListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POAdviceNotePOListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.bandedGridView1.OptionsBehavior.Editable = true;

            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();
            this.BindingSource.DataSource = (DataContext as POPCDataContext).ExecuteQuery<sp_GetOutstandingAdviceNoteResult>("exec sp_GetOutstandingAdviceNote1").ToList();

            PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

            var lists = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Level6Status").OrderBy(p => p.DataCode).Select(p => new { Cde = p.DataCode, Explanation = p.DataName }).ToList();
            lists.Insert(0, null);

            repositoryItemGridLookUpEdit_Status.DataSource = lists;
            repositoryItemGridLookUpEdit_Status.ValueMember = "Cde";
            repositoryItemGridLookUpEdit_Status.DisplayMember = "Cde";
            repositoryItemGridLookUpEdit_Status.View.Columns[0].Width = 60;
            repositoryItemGridLookUpEdit_Status.View.Columns[1].Width = 180;

            repositoryItemComboBox_RCTransfer.Items.Clear();
            var RCTransferList = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.RCTransfer").OrderBy(p => p.DataCode).Select(p => p.DataName).ToList();
            RCTransferList.Insert(0, "");
            repositoryItemComboBox_RCTransfer.Items.AddRange(RCTransferList);
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        protected override void OnClickFind()
        {
            //base.OnClickFind();

            //using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(5, this))
            //{
            POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(5, this);
            //this.BindingSource.DataSource = null;
            DialogResult dr = frm.ShowDialog();
            if (dr == DialogResult.OK || dr == DialogResult.Ignore)
            {
                //EnquiryPOPC(frm.Condition);
                //this.BindingSource.DataSource = _changeMonitors;
                //GridViewSort();

                _condition = frm.Condition;
                if (dr == DialogResult.OK) //Invoice Matching
                {
                    foreach (var obj in _changeMonitors)
                    {
                        obj.InvoiceNo = _condition.InvoiceNo;
                        obj.InvoiceDate = _condition.InvoiceDate;
                        obj.InvoiceMatchingDate = DateTime.Now;

                        obj.InvoiceNoFlag = true;
                        obj.InvoiceDateFlag = true;
                        obj.GRNQtyFlag = true;                 //colInvoiceQty2Flag
                        obj.InvoiceAmountFlag = true;
                        obj.UnitFlag = true;
                        obj.BDownFlag = true;
                        obj.PriceFlag = true;
                        obj.CurrencyFlag = true;
                        obj.PaymentTermFlag = true;
                        obj.IncotermFlag = true;

                        var POAdviceNoteList = context.POAdviceNotes.Where(p => p.Supplier == obj.Supplier && p.AdviceNote == obj.AdviceNote);
                        foreach (var POAdviceNoteItem in POAdviceNoteList)
                        {
                            POAdviceNoteItem.ANStatus = "C";
                        }

                        var POAdviceNotePOList = context.POAdviceNotePOs.Where(p => p.Supplier == obj.Supplier && p.AdviceNote == obj.AdviceNote);
                        foreach (var POAdviceNotePOItem in POAdviceNotePOList)
                        {
                            POAdviceNotePOItem.ANStatus = "C";
                        }
                    }
                }
                //this.BindingSource.EndEdit();
                context.SubmitChanges();
                this.DataBind();
                this.InitFormNavigator();

                //    UpdateAfterMatching();
            }
            //}
        }


        private POPCSortBy _sortby;
        private PH.POPC.BO.POPCEnquiryCondition _condition;
        public IEnumerable<POChangesMonitor> _changeMonitors;
        PH.POPC.BO.POPCDataContext context;

        public void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            _condition = condition;
            context = ContextBuilder.CreateContext<POPCDataContext>();
            context.CommandTimeout = 1000;
            context.Connection.Open();
            context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            _sortby = condition.SortBy;
            _changeMonitors = from c in context.POChangesMonitors
                              where c.Company == condition.Company
                              && (c.POColorSizeDetail.VersionFlag ?? false)
                              && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                              && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                              && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "") //&& (!(c.POColorSizeDetail.Pending ?? false))

                              && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))

                              //Cancel 的PO不顯示出來 由David修改以下代碼 2020-09-17
                              && c.POColorSizeDetail.PODetail.POHeader.Status != "-1"

                                  //&& (condition.POStatus == 0 //All
                                  //   || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                  //   || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                  //   )
                              && (string.IsNullOrEmpty(condition.AdviceNote) || condition.AdviceNotes.Contains(c.AdviceNote))

                              orderby c.AdviceNote, c.PONO, c.OrderLine, c.SKU, c.SplitNo
                              select c;

            //var a = _changeMonitors.Count();
            //MessageBox.Show(a.ToString());
        }

        public List<InvoiceUnitQty> GetSumQtyByUnit1()
        {
            var lists = _changeMonitors.GroupBy(p => new { p.SupplierReference, p.AdviceNote, p.PHUOM, p.ConvertFactor, p.SupplierUOM, p.Currency, p.Price, p.POColorSizeDetail.VATPrice, p.PaymentTerms })
                .Select(g => new InvoiceUnitQty
            {
                SuppRef = g.Key.SupplierReference,
                AdviceNote = g.Key.AdviceNote,
                PHUom = g.Key.PHUOM,
                PaymentTerms = g.Key.PaymentTerms,

                InvoiceQty = g.Sum(s => Convert.ToDecimal(s.InvoiceQty)),
                GRNQty = g.Sum(s => Convert.ToDecimal(s.GRNQty ?? 0)),
                RCQty = g.Sum(s => Convert.ToDecimal(s.RCQty ?? 0)),
                StockInQty = g.Sum(s => Convert.ToDecimal(s.StockInQty ?? 0)),

                ConvertFactor = Convert.ToDecimal(g.Key.ConvertFactor),
                SupplierUOM = g.Key.SupplierUOM,
                SuppStockInQty = g.Sum(s => Convert.ToDecimal(s.StockInQty)),
                PackingListQtyOnSuppUom = g.Sum(s => Convert.ToDecimal(s.SuppStockInQty)),

                Currency = g.Key.Currency,
                UnitPrice = g.Key.Price,
                UnitPriceVAT = g.Key.VATPrice
            }).ToList();

            FabricInspectionDataContext IMQE_DB = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            foreach (var obj in lists)
            {
                obj.Useful = context.fn_GetUseful(obj.SuppRef, obj.AdviceNote);
                obj.TotalAmount = lists.Select(p => p.SubTotalAmount).Sum();
                obj.ClaimDiffBy_RCQtyFlag = ((obj.RCQty ?? 0) > 0) ? "√" : "--";
                obj.ClaimDiffBy_MoneyFlag = IMQE_DB.DebitNotes.FirstOrDefault(p => p.InvoiceNo == obj.AdviceNote) != null ? "√" : "--";

                obj.AmountDiff_ReviseInvoice = "--";
                obj.AmountDiff_DN = obj.ClaimDiffBy_MoneyFlag;
                obj.AmountDiff_CN = "--";
                obj.AmountDiff_FOC = "--";
            }
            //return lists;

            //100% RC的记录不显示,  2022-08-23由David增加 
            return lists.Where(p => p.RCPercent < 100.00m).ToList();
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<sp_GetOutstandingAdviceNoteResult> lists = bandedGridView1.FilteredList().Cast<sp_GetOutstandingAdviceNoteResult>();

                switch (item.FieldName)
                {
                    case "BuyerCode":
                        e.TotalValue = lists.Select(p => p.BuyerCode).Distinct().Count();
                        break;

                    case "Supplier":
                        e.TotalValue = lists.Select(p => p.Supplier).Distinct().Count();
                        break;

                    case "PONO":
                        e.TotalValue = lists.Select(p => p.PONO).Distinct().Count();
                        break;

                    case "AdviceNote":
                        e.TotalValue = lists.Select(p => p.AdviceNote).Distinct().Count();
                        break;

                    case "Currency":
                        e.TotalValue = lists.Select(p => p.Currency).Distinct().Count();
                        break;

                    case "PaymentTerms":
                        e.TotalValue = lists.Select(p => p.PaymentTerms).Distinct().Count();
                        break;

                    case "PurchaseOfficer":
                        e.TotalValue = lists.Select(p => p.PurchaseOfficer).Distinct().Count();
                        break;

                    case "LogNoShow":
                        e.TotalValue = lists.Select(p => p.LogNoShow).Distinct().Count();
                        break;
                }
            }
        }

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            sp_GetOutstandingAdviceNoteResult obj = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;

            SaveCurrentData(obj);
        }


        void SaveCurrentData(sp_GetOutstandingAdviceNoteResult obj)
        {
            //sp_GetOutstandingAdviceNoteResult obj = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
            if (obj != null)
            {
                POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
                //var lists = db.POInvoiceMatchings.Where(p => p.PONO == obj.PONO && p.OrderLine == obj.OrderLine && p.AdviceNote == obj.AdviceNote);
                var lists = db.POChangesMonitors.Where(p => (p.POColorSizeDetail.VersionFlag ?? false) == true &&
                    p.PONO == obj.PONO && p.OrderLine == obj.OrderLine && p.AdviceNote == obj.AdviceNote && p.GRNDate == obj.GRNDate);

                //if (obj.GRNDate.HasValue) lists = lists.Where(p => p.GRNDate == obj.GRNDate);
                //else lists = lists.Where(p => p.GRNDate == null);

                //if (obj.HDODate.HasValue) lists = lists.Where(p => p.HDODate == obj.HDODate);
                //else lists = lists.Where(p => p.HDODate == null);

                //if (obj.StockInDate.HasValue) lists = lists.Where(p => p.StockInDate == obj.StockInDate);
                //else lists = lists.Where(p => p.StockInDate == null);

                foreach (var Item in lists)
                {
                    Item.LogNo = Convert.ToInt32(obj.LogNoShow);
                    Item.Suffix = obj.Suffix;
                    Item.PaymentDone = obj.PaymentDone;
                    Item.PaymentDoneDate = obj.PaymentDoneDate;
                    //Item.PaymentDone = Item.PaymentDoneDate.HasValue ? "Y" : null; 
                    Item.Status = obj.Status;
                    Item.Transferred = obj.Transferred;

                    Item.PaymentDoneDate = obj.PaymentDoneDate;
                    if (Item.PaymentDoneDate.HasValue)
                    {
                        bandedGridView1.SetFocusedRowCellValue(colPaymentDone, "Y");
                        Item.PaymentDone = "Y";
                    }
                    else
                    {
                        bandedGridView1.SetFocusedRowCellValue(colPaymentDone, null);
                        Item.PaymentDone = null;
                    }

                }
                db.SubmitChanges();
            }
        }

        private void bandedGridView1_ShowingEditor(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //sp_GetOutstandingAdviceNoteResult obj = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
            //if (obj != null)
            //{
            //    e.Cancel = obj.InvoiceMatchingDone == "Y";
            //}
        }


        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "InvoiceMatchingDropDeadDate")
            {
                object InvoiceMatchingDropDeadDate = bandedGridView1.GetRowCellValue(e.RowHandle, "InvoiceMatchingDropDeadDate");
                if (InvoiceMatchingDropDeadDate == null) return;

                object InvoiceMatchingDone = bandedGridView1.GetRowCellValue(e.RowHandle, "InvoiceMatchingDone");
                if (InvoiceMatchingDone != null && InvoiceMatchingDone.ToString() == "Y") return;

                if (Convert.ToDateTime(InvoiceMatchingDropDeadDate).Date <= DateTime.Now.Date)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
            else if (e.Column.FieldName == "PaymentDropDeadDate")
            {
                object PaymentDropDeadDate = bandedGridView1.GetRowCellValue(e.RowHandle, "PaymentDropDeadDate");
                if (PaymentDropDeadDate == null) return;

                object PaymentDone = bandedGridView1.GetRowCellValue(e.RowHandle, "PaymentDone");
                if (PaymentDone != null && PaymentDone.ToString() == "Y") return;

                if (Convert.ToDateTime(PaymentDropDeadDate).Date <= DateTime.Now.Date)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
            else if (e.Column.FieldName == "SplitShpt")
            {
                object SplitShpt = bandedGridView1.GetRowCellValue(e.RowHandle, "SplitShpt");
                if (SplitShpt == null) return;

                if (SplitShpt.ToString() == "Y")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
            else if (e.Column.FieldName == "Transferred")
            {
                object Transferred = bandedGridView1.GetRowCellValue(e.RowHandle, "Transferred");
                if (Transferred == null) return;

                if (Transferred.ToString() == "Needn't")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
            else if (e.Column.FieldName == "FillUpDate")
            {
                object FillUpDate = bandedGridView1.GetRowCellValue(e.RowHandle, "FillUpDate");
                if (FillUpDate == null) return;

                if (Convert.ToDateTime(FillUpDate).Date <= DateTime.Now.Date)
                {
                    object LogNoShow = bandedGridView1.GetRowCellValue(e.RowHandle, "LogNoShow");
                    object Suffix = bandedGridView1.GetRowCellValue(e.RowHandle, "Suffix");
                    if (LogNoShow == null || Suffix == null) return;

                    int CurrentLogNo = Convert.ToInt32(LogNoShow);
                    int CurrentSuppfix = Convert.ToInt32(Suffix);
                    IEnumerable<sp_GetOutstandingAdviceNoteResult> lists = this.BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
                    if (!lists.Any(p => p.LogNo == CurrentLogNo && p.Suffix > CurrentSuppfix))
                    {
                        e.Appearance.ForeColor = Color.Red;
                    }
                }
            }

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

        object SaveBindingSource = null;
        private void barEditItemDashboard_EditValueChanged(object sender, EventArgs e)
        {
            try
            {
                if (SaveBindingSource == null)
                {
                    SaveBindingSource = this.BindingSource.DataSource;
                }
                this.BindingSource.DataSource = SaveBindingSource;

                if (this.BindingSource.List.Count == 0) return;

                this.Cursor = Cursors.WaitCursor;

                if (barEditItemDashboard.EditValue.ToString() == "6.1# Matching DDD red data by week")
                {
                    bandedGridView1.ClearColumnsFilter();
                    bandedGridView1.ClearGrouping();

                    IEnumerable<sp_GetOutstandingAdviceNoteResult> lists = this.BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
                    this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<sp_GetOutstandingAdviceNoteResult>()
                        .Where(p => p.InvoiceMatchingDone != "Y" && p.InvoiceMatchingDropDeadDate.HasValue && p.InvoiceMatchingDropDeadDate.Value <= DateTime.Now.Date);
                    colMatchingDropDeadDateWeek.Group();
                }
                else if (barEditItemDashboard.EditValue.ToString() == "6.2# Payment DDD red data by week")
                {
                    bandedGridView1.ClearColumnsFilter();
                    bandedGridView1.ClearGrouping();

                    IEnumerable<sp_GetOutstandingAdviceNoteResult> lists = this.BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
                    this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<sp_GetOutstandingAdviceNoteResult>()
                        .Where(p => p.PaymentDone != "Y" && p.PaymentDropDeadDate.HasValue && p.PaymentDropDeadDate.Value <= DateTime.Now.Date);

                    colPaymentDropDeadDateWeek.Group();
                }
                else if (barEditItemDashboard.EditValue.ToString() == "6.3# This log checked & paid, still not cmpl")
                {
                    bandedGridView1.ClearColumnsFilter();
                    bandedGridView1.ClearGrouping();

                    IEnumerable<sp_GetOutstandingAdviceNoteResult> lists = this.BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
                    this.BindingSource.DataSource = bandedGridView1.FilteredList().Cast<sp_GetOutstandingAdviceNoteResult>()
                        .Where(p => p.InvoiceMatchingDone == "Y" && p.PaymentDone == "Y" && string.IsNullOrEmpty(p.Status));
                }
                else
                {
                    this.BindingSource.DataSource = SaveBindingSource;
                    bandedGridView1.ClearGrouping();
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
            this.InitFormNavigator();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);
        }

        public void ShowInvoiceMatchingStep2(PH.POPC.BO.POPCEnquiryCondition ACondition, string AInvoiceNo)
        {
            this.CreateProgramForm(typeof(POPCLevel5Form), "Find out non-matching item(s)", true, new object[] { ACondition, AInvoiceNo }, null);
        }

        public void SaveInvoiceInfo(string AInvoiceNo, DateTime AInvoiceDate)
        {
            //将当前做Invoice Matching的InvoiceNo和Invoice Date保存到Level 3
            foreach (var obj in _changeMonitors)
            {
                obj.InvoiceNo = AInvoiceNo;
                obj.InvoiceDate = AInvoiceDate;
            }
            context.SubmitChanges();

            //将InvoiceNo和Invoice Date刷新到 Invoice Matching Incomplete Layout中
            IEnumerable<sp_GetOutstandingAdviceNoteResult> GridDataList = BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
            var lists = GridDataList.Where(p => _condition.AdviceNotes.Contains(p.AdviceNote));
            foreach (var obj in lists)
            {
                obj.InvoiceNo = AInvoiceNo;
                obj.InvoiceDate = AInvoiceDate;
            }
            bandedGridView1.RefreshData();
        }

        private void btnRecall_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            sp_GetOutstandingAdviceNoteResult obj = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
            if (obj == null) return;

            string InvoiceNo = obj.InvoiceNo;
            string Str = string.Format("Recall Invoice No.: {0}?", InvoiceNo);
            if (MessageBox.Show(Str, "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            string Supplier = obj.Supplier;
            DateTime? InvoiceDate = obj.InvoiceDate;
            List<string> AdviceNotes = new List<string>();

            //按Invoice No + Invoice Date清掉界面上的数据
            IEnumerable<sp_GetOutstandingAdviceNoteResult> GridDataList = BindingSource.DataSource as IEnumerable<sp_GetOutstandingAdviceNoteResult>;
            var Levle6IncompleteList = GridDataList.Where(p => p.InvoiceNo == InvoiceNo && p.InvoiceDate == InvoiceDate);
            foreach (var o in Levle6IncompleteList)
            {
                o.InvoiceNo = null;
                o.InvoiceDate = null;

                if (!AdviceNotes.Contains(o.AdviceNote))
                {
                    AdviceNotes.Add(o.AdviceNote);
                }
            }

            //将Invoice No + Invoice Date对应的Level3中的记录清掉
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            var Level3List = from c in db.POChangesMonitors
                             where c.Company == "P1"
                             && (c.POColorSizeDetail.VersionFlag ?? false)
                             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                             && (string.IsNullOrEmpty(Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == Supplier)
                             && c.POColorSizeDetail.PODetail.POHeader.Status != "-1"
                             && (AdviceNotes.Count == 0 || AdviceNotes.Contains(c.AdviceNote))
                             && (c.InvoiceNo == InvoiceNo)
                             select c;

            if (InvoiceDate.HasValue)
            {
                Level3List = Level3List.Where(p => p.InvoiceDate == InvoiceDate);
            }
            else
            {
                Level3List = Level3List.Where(p => p.InvoiceDate == null);
            }

            foreach (var o in Level3List)
            {
                o.InvoiceNo = null;
                o.InvoiceDate = null;
            }
            db.SubmitChanges();

            bandedGridView1.RefreshData();
        }

        private void bandedGridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            sp_GetOutstandingAdviceNoteResult obj = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
            btnRecall.Enabled = !string.IsNullOrEmpty(obj.InvoiceNo) && obj.InvoiceMatchingDone != "Y";
        }

        private void bandedGridView1_MouseDown(object sender, MouseEventArgs e)//
        {
            //return;
            if (e.Button == MouseButtons.Right)
            {
                DoShowMenu(this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y)));
            }

        }

        private void DoShowMenu(DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi)
        {
            if (hi.HitTest == DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitTest.RowCell)
            {
                this.bandedGridView1.FocusedRowHandle = hi.RowHandle;
                this.bandedGridView1.FocusedColumn = hi.Column;

                sp_GetOutstandingAdviceNoteResult currLot = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
                if (currLot == null) return;

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
                if (focusCol != null)
                {
                    if (focusCol == colPaymentDoneDate) btnBatchEdit.Caption = "Batch Edit - Paid dd";
                    //else if (focusCol == colPaymentDone) btnBatchEdit.Caption = "Batch Edit - Payment Done";
                    else if (focusCol == colStatus) btnBatchEdit.Caption = "Batch Edit - This log Cmpl";
                    else return;
                }
                popupMenu1.ShowPopup(Control.MousePosition);
            }
        }

        private void btnBatchEdit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            int currHandle = bandedGridView1.FocusedRowHandle;
            sp_GetOutstandingAdviceNoteResult currLot = this.BindingSource.Current as sp_GetOutstandingAdviceNoteResult;
            if (currLot == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (focusCol == colPaymentDoneDate)
            {
                BatchInputBoxForm frmBatchInputBox = new BatchInputBoxForm(BatchInputBoxTypes.Date, "Paid dd:");
                if (frmBatchInputBox.ShowDialog() == DialogResult.OK)
                {
                    DateTime? PainDate = frmBatchInputBox.BatchEditValue as DateTime?;


                    try
                    {
                        bandedGridView1.BeginUpdate();
                        foreach (int rowHandle in bandedGridView1.GetSelectedRows())
                        {
                            DevExpress.XtraGrid.Columns.GridColumn[] Columns = bandedGridView1.GetSelectedCells(rowHandle);

                            //DataRow dr = bandedGridView1.GetDataRow(rowHandle) as DataRow; 
                            sp_GetOutstandingAdviceNoteResult objdb =
                               bandedGridView1.GetRow(rowHandle) as sp_GetOutstandingAdviceNoteResult;

                            objdb.PaymentDoneDate = PainDate;

                            foreach (var col in Columns)
                            {
                                if (col == colPaymentDoneDate)
                                {
                                    bandedGridView1.SetRowCellValue(rowHandle, col, PainDate);

                                    /****************add by shulin 2022-11-15*************************/
                                    if (PainDate != null)
                                    {
                                        bandedGridView1.SetRowCellValue(rowHandle, colPaymentDone, "Y");
                                    }
                                    else
                                    {
                                        bandedGridView1.SetRowCellValue(rowHandle, colPaymentDone, null);
                                    }
                                    /********************************************/


                                    bandedGridView1.PostEditor();
                                    bandedGridView1.UpdateCurrentRow();
                                    this.BindingSource.EndEdit();
                                    SaveCurrentData(objdb);
                                }
                            }
                        }
                    }
                    finally
                    {
                        bandedGridView1.EndUpdate();
                    }

                    //this.BindingSource.EndEdit();
                    //.DataContext.SubmitChanges();
                }







            }
            //else if (focusCol == colPaymentDone)
            //{
            //    BatchInputBoxForm frmBatchInputBox = new BatchInputBoxForm(BatchInputBoxTypes.String, "Payment Done:");
            //    if (frmBatchInputBox.ShowDialog() == DialogResult.OK)
            //    {
            //        string PainDate = frmBatchInputBox.BatchEditValue as string;
            //    }
            //}
            else if (focusCol == colStatus)
            {
                BatchInputBoxForm frmBatchInputBox = new BatchInputBoxForm(BatchInputBoxTypes.ActionLogCmpl, "This log Cmpl:");
                if (frmBatchInputBox.ShowDialog() == DialogResult.OK)
                {
                    string ActionLogCmpl = frmBatchInputBox.BatchEditValue as string;


                    /***********************************************************************/

                    try
                    {
                        bandedGridView1.BeginUpdate();
                        foreach (int rowHandle in bandedGridView1.GetSelectedRows())
                        {
                            DevExpress.XtraGrid.Columns.GridColumn[] Columns = bandedGridView1.GetSelectedCells(rowHandle);

                            //DataRow dr = bandedGridView1.GetDataRow(rowHandle) as DataRow; 
                            sp_GetOutstandingAdviceNoteResult objdb =
                               bandedGridView1.GetRow(rowHandle) as sp_GetOutstandingAdviceNoteResult;

                            objdb.Status = ActionLogCmpl;

                            foreach (var col in Columns)
                            {
                                if (col == colStatus)
                                {
                                    bandedGridView1.SetRowCellValue(rowHandle, col, ActionLogCmpl);

                                    /****************add by shulin 2022-11-15*************************/
                                    if (ActionLogCmpl != null)
                                    {
                                        bandedGridView1.SetRowCellValue(rowHandle, colStatus, ActionLogCmpl);
                                    }
                                    else
                                    {
                                        bandedGridView1.SetRowCellValue(rowHandle, colStatus, null);
                                    }
                                    /********************************************/


                                    bandedGridView1.PostEditor();
                                    bandedGridView1.UpdateCurrentRow();
                                    this.BindingSource.EndEdit();
                                    SaveCurrentData(objdb);
                                }
                            }
                        }
                    }
                    finally
                    {
                        bandedGridView1.EndUpdate();
                    }
                    /************************************************************************/



                }
            }

        }

    }
}
