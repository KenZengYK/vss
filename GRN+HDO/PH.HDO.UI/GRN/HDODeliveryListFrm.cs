using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils.Drawing;
using DevExpress.XtraBars;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.HDO.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.ExtendLibrary;
using PH.HDO.UI.GRN;
using DevExpress.XtraGrid;

namespace PH.HDO.UI
{
    public partial class HDODeliveryListFrm : PH.Platform.UI.CS.UI2.ListForm
    {
        public HDODeliveryListFrm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            _firstLoad = false;

            string aa = bandedGridView1.PaintStyleName;
            bandedGridView1.PaintStyleName = "Default";
            //string aa = bandedGridView1.PaintStyleName;
            colActualTransitDate.AppearanceHeader.BackColor = Color.Blue;
        }
        private bool _firstLoad;

        public override void DataBind()
        {
            base.DataBind();

            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 80000;
            this.DataContext = Context;

            if (!_firstLoad)
            {
                string sqls = string.Format("exec dbo.[sp_GRNNoHDO_2]   'P1'");
                Context.ExecuteNonQuery(sqls);

                var aa = from a in Context.HDODeliveries
                         where !(a.GRNStatus ?? false)
                         select a;

                this.BindingSource.DataSource = aa;
                _firstLoad = true;
            }

            //this.EditorTypeName = typeof(HDOInvoiceDetialFrm).FullName;
            //  base.DataBind();
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDODelivery);
            param.WarnRecord = 1000;
            this.StartEnquiry(param);

            this.ShowMultiCheck = true;
            //this.gridBand1.Columns.Add((DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn)this.objListGridView.Columns["CheckFlag"]);

            barBtnFind.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
            barBtnOpen.Visibility = BarItemVisibility.Never;
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            

            //控制 Checked 栏位是否有编辑权限
            var CheckedRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Checked");
            this.colChecked.OptionsColumn.AllowEdit = CheckedRight != null;
        }


        public override void SaveData()
        {
            this.BindingSource.EndEdit();
            base.SaveData();
            this.objListGridView.RefreshData();
        }

        private void btnBatchUpdate_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.BindingSource.EndEdit();

            BatchUpdateCustomInfoForm frmBatch = new BatchUpdateCustomInfoForm();
            if (frmBatch.ShowDialog() == DialogResult.OK)
            {
                Dictionary<int, HDODelivery> CheckList = this.GetCheckData<HDODelivery>();
                foreach (var obj in CheckList)
                {
                    obj.Value.EntranceCustomNO = frmBatch.CustomNo;
                    obj.Value.EntranceCustomDate = frmBatch.EntranceCustomDate;
                }
                (this.DataContext as HDODataContext).SubmitChanges();
            }
        }




        #region 平臺的全選功能在BandGridView模式下不能正常使用，所以需要自己實現 由David加入2019-06-12

        GridHitInfo gridinfo;
        bool checkBoxState;
        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (DesignMode)
                return;

            if (this.ShowMultiCheck)
            {

                if (e.Column != null && e.Column.FieldName == "CheckFlag")
                {
                    e.Info.InnerElements.Clear();
                    e.Painter.DrawObject(e.Info);
                    DrawCheckBox(e.Graphics, e.Bounds, checkBoxState);
                    e.Handled = true;
                }

            }
            if (e.Column != null)
            {
                if (e.Column.Name == "colActualTransitDate" || e.Column.Name == "colReceivedDate" || e.Column.Name == "bandedGridColumn1" || e.Column.Name == "colCBM" || e.Column.Name == "colChecked")
                {
                    // e.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(251, 215, 167);
                    e.Appearance.BackColor = System.Drawing.Color.FromArgb(251, 215, 167);

                    //System.Drawing.Color.FromArgb(((int)(((byte)(251)))), ((int)(((byte)(215)))), ((int)(((byte)(167)))));
                    e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;
                    Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
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

                    BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
                    BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
                    ObjectPainter.DrawObject(e.Cache, borderPainter, border);
                    r.Inflate(-1, -1);
                    e.Graphics.FillRectangle(brush, r);
                    r.Inflate(-2, 0);
                    e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
                    e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
                    e.Handled = true;

                }
            }


        }

        RepositoryItemCheckEdit CheckEditor = new RepositoryItemCheckEdit();
        DevExpress.XtraEditors.ViewInfo.CheckEditViewInfo info;
        DevExpress.XtraEditors.Drawing.CheckEditPainter painter;
        DevExpress.XtraEditors.Drawing.ControlGraphicsInfoArgs args;
        private void DrawCheckBox(Graphics g, Rectangle r, bool Checked)
        {
            if (CheckEditor != null)
            {
                info = CheckEditor.CreateViewInfo() as DevExpress.XtraEditors.ViewInfo.CheckEditViewInfo;
                painter = CheckEditor.CreatePainter() as DevExpress.XtraEditors.Drawing.CheckEditPainter;
                info.EditValue = Checked;
                info.Bounds = r;
                info.CalcViewInfo(g);
                args = new DevExpress.XtraEditors.Drawing.ControlGraphicsInfoArgs(info, new DevExpress.Utils.Drawing.GraphicsCache(g), r);
                painter.Draw(args);
                args.Cache.Dispose();
            }
        }

        private void SetCheckState(bool state)
        {
            if (BindingSource.DataSource != null)
            {
                DevExpress.XtraGrid.Views.Base.ColumnView view = ((DevExpress.XtraGrid.Views.Base.ColumnView)this.objListGridControl.FocusedView);
                for (int i = 0; i < view.RowCount; i++)
                {
                    BaseEntity obj = view.GetRow(i) as BaseEntity;
                    if (obj != null) obj.CheckFlag = state;
                }
            }
        }

        private void bandedGridView1_MouseDown(object sender, MouseEventArgs e)
        {
            if (DesignMode)
                return;

            if (this.ShowMultiCheck)
            {
                if (e.Button != MouseButtons.Left)
                    return;

                Point po = objListGridControl.PointToClient(Control.MousePosition);
                gridinfo = bandedGridView1.CalcHitInfo(po);

                if (gridinfo.InColumn && gridinfo.Column.FieldName == "CheckFlag")
                {
                    ((DevExpress.Utils.DXMouseEventArgs)e).Handled = true;
                    this.BeginInvoke(new MethodInvoker(bandedGridView1.LayoutChanged));
                    bandedGridView1.BeginUpdate();
                    try
                    {
                        checkBoxState = !checkBoxState;
                        bandedGridView1.InvalidateColumnHeader(bandedGridView1.Columns["CheckFlag"]);
                        SetCheckState(checkBoxState);
                    }
                    finally
                    {
                        bandedGridView1.RefreshData();
                        this.BindingSource.MoveFirst();
                        bandedGridView1.MoveFirst();
                        bandedGridView1.EndUpdate();

                    }

                }
                else if (gridinfo.Column != null && gridinfo.Column.FieldName == "CheckFlag")
                {
                    bandedGridView1.BeginUpdate();
                    try
                    {
                        BaseEntity bse = this.bandedGridView1.GetRow(gridinfo.RowHandle) as BaseEntity;
                        if (bse != null)
                            bse.CheckFlag = !bse.CheckFlag;
                    }
                    finally
                    {
                        bandedGridView1.EndUpdate();
                    }
                }
            }
        }
        #endregion

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

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            switch (e.Column.FieldName)
            {
                case "ETADate":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                    DateTime GetNowDaeTime = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd"));
                    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
                    DateTime PlantDaeTime = Convert.ToDateTime(bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate").ToString());


                    string RecDate = bandedGridView1.GetRowCellValue(e.RowHandle, "ReceivedDate") == null ? "" : bandedGridView1.GetRowCellValue(e.RowHandle, "ReceivedDate").ToString();
                    if (PlantDaeTime < GetNowDaeTime && string.IsNullOrEmpty(RecDate))
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Black;
                    }
                    break;
                default:
                    break;

            }

            //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
            //if (string.IsNullOrEmpty(bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate").ToString()))return;
            //if (!string.IsNullOrEmpty(bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate").ToString()))
            //{
            //    DateTime GetNowDaeTime = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd"));
            //    //if (bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate") == null) return;
            //    DateTime PlantDaeTime = Convert.ToDateTime(bandedGridView1.GetRowCellValue(e.RowHandle, "ETADate").ToString());


            //    string RecDate = bandedGridView1.GetRowCellValue(e.RowHandle, "ReceivedDate") == null ? "" : bandedGridView1.GetRowCellValue(e.RowHandle, "ReceivedDate").ToString();
            //    if (PlantDaeTime < GetNowDaeTime && string.IsNullOrEmpty(RecDate))
            //    {
            //        colETADate.AppearanceCell.ForeColor = System.Drawing.Color.Red;
            //    }

            //    if (PlantDaeTime >= GetNowDaeTime || !string.IsNullOrEmpty(RecDate))
            //    {
            //        colETADate.AppearanceCell.ForeColor = System.Drawing.Color.Black;
            //    }
            //    //else
            //    //{
            //    //    colETADate.AppearanceCell.ForeColor = System.Drawing.Color.Black;
            //    //}
            //}

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
                if (barEditItemDashboard.EditValue.ToString() == "1. Missing PO Act. Transit dd")
                {
                    bandedGridView1.ClearColumnsFilter();
                    IEnumerable<HDODelivery> lists = this.BindingSource.DataSource as IEnumerable<HDODelivery>;
                    this.BindingSource.DataSource = lists.Where(p => !p.ActualTransitDate.HasValue);
                }
                else if (barEditItemDashboard.EditValue.ToString() == "2. Rcvg End Pt. dd is delay")
                {
                    bandedGridView1.ClearColumnsFilter();
                    IEnumerable<HDODelivery> lists = this.BindingSource.DataSource as IEnumerable<HDODelivery>;
                    this.BindingSource.DataSource = lists.Where(p => p.ETADate.HasValue && p.ETADate.Value < DateTime.Today.Date && !p.ReceivedDate.HasValue);
                }
                else
                {
                    this.BindingSource.DataSource = SaveBindingSource;
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
            this.InitFormNavigator();

        }

        private void barButtonItemSummary_ItemClick(object sender, ItemClickEventArgs e)
        {
            IEnumerable<HDODelivery> lists = bandedGridView1.FilteredList().Cast<HDODelivery>();

            GRNWorksheettSummaryForm frmSummary = new GRNWorksheettSummaryForm(lists);
           frmSummary.ShowDialog();

            // this.BindingSource.DataSource as IEnumerable<HDODelivery>;

        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<HDODelivery> lists = bandedGridView1.FilteredList().Cast<HDODelivery>();

                switch (item.FieldName)
                {
                    case "HDONO":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.HDONO)).Select(p => p.HDONO).Distinct().Count();
                        break;
                }
            }
        }

        private void barRefresh_ItemClick(object sender, ItemClickEventArgs e)
        {

           
            if (this.DataContext == null)
            {
                this.DataContext = ContextBuilder.CreateContext<HDODataContext>();
            }
            HDODataContext Context = this.DataContext as HDODataContext;

            string sqls = string.Format("exec dbo.[sp_GRNNoHDO_2]   'P1'");
            Context.ExecuteNonQuery(sqls);

            var aa = from a in Context.HDODeliveries
                     where !(a.GRNStatus ?? false)
                     select a;

            this.BindingSource.DataSource = aa;

            this.objListGridView.RefreshData();
        }
    }
}
