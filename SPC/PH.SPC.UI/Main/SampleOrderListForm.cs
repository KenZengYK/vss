using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using DevExpress.XtraBars;
using PH.Platform.BO;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;
using PH.SPC.UI.Report;

namespace PH.SPC.UI
{
    public partial class SampleOrderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //#region
        //internal DevExpress.XtraGrid.Views.Grid.GridView SampleOrderView
        //{
        //    get
        //    {
        //        return this.objListGridView;
        //    }
        //}
        //#endregion

        private string _SampleOrderState;
        //private string _useCompleteLevel;
        //public string UseCompleteLevel
        //{
        //    get { return _useCompleteLevel; }
        //    set
        //    {
        //        _useCompleteLevel = value;
        //        this.barBtnComplete.Enabled = this.barBtnUnComplete.Enabled = _useCompleteLevel == "1";
        //    }
        //}

        public SampleOrderListForm()
        {
            InitializeComponent();
            //UseCompleteLevel = "2";

        }
        private PH.SPC.BO.SampleOrder CurSampleOrder
        {
            get
            {
                return this.BindingSource.Current as PH.SPC.BO.SampleOrder;
            }
        }
        public SampleOrderListForm(string ASampleOrderState)
        {
            InitializeComponent();
            _SampleOrderState = ASampleOrderState;
            //UseCompleteLevel = "2";// =1: 在第一層可以使用Complete 功能, 否則要在第二層才可以使用
        }
        //public SampleOrderListForm(string OrderState, string useCompleteLevel)
        //{
        //    InitializeComponent();
        //    _Iscomplete = OrderState;
        //    //UseCompleteLevel = useCompleteLevel;
        //}

        public int Stage { get; set; }

        public override void DataBind()
        {
            base.DataBind();

            SampleOrderList sampleOrderList = new SampleOrderList();
            this.DataContext = sampleOrderList.CurrentDataContext;

            //if (!string.IsNullOrEmpty(_SampleOrderState))
            //    _SampleOrderState = _SampleOrderState.ToLower();

            SPCDataContext db = this.DataContext as SPCDataContext;

            if (_SampleOrderState == "Complete")
            {
                //string SqlStr = string.Format("exec sp_GetSampleOrderList 1, {0}", Stage);
                //this.BindingSource.DataSource = (this.DataContext as SPCDataContext).ExecuteQuery<SampleOrder>(SqlStr);

                //db.ExecuteNonQuery("exec sp_CalculateSampleOrderTotalInformation 1");
                this.BindingSource.DataSource = from c in db.SampleOrders
                                                where (c.IsComplete ?? false) && c.CreateDate >= DateTime.Now.Date.AddYears(-1)
                                                select c;


                //barBtnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            else if (_SampleOrderState == "Outstanding")
            {
                //string SqlStr = string.Format("exec sp_GetSampleOrderList 0, {0}", Stage);
                //this.BindingSource.DataSource = (this.DataContext as SPCDataContext).ExecuteQuery<SampleOrder>(SqlStr);

                //db.ExecuteNonQuery("exec sp_CalculateSampleOrderTotalInformation 0");
                this.BindingSource.DataSource = from c in db.SampleOrders
                                                where (c.IsComplete ?? false) == false && (c.IsPending ?? false) == false
                                                select c;
                //barBtnUnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            else if (_SampleOrderState == "Pending")
            {
                //db.ExecuteNonQuery("exec sp_CalculateSampleOrderTotalInformation 0");
                this.BindingSource.DataSource = from c in db.SampleOrders
                                                where (c.IsComplete ?? false) == false && c.IsPending == true
                                                select c;
            }
            //else
            //{
            //    this.BindingSource.DataSource = from c in (this.DataContext as SPCDataContext).SampleOrders select c;
            //    //barBtnUnComplete.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //}
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            //處理功能權限
            var CompleteRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Complete");
            bool HasCompleteRight = CompleteRight != null;
            barBtnComplete.Visibility = (_SampleOrderState == "Outstanding" && HasCompleteRight) ? BarItemVisibility.Always : BarItemVisibility.Never;

            var UnCompleteRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "UnComplete");
            bool HasUnCompleteRight = UnCompleteRight != null;
            barBtnUnComplete.Visibility = (_SampleOrderState == "Complete" && HasUnCompleteRight) ? BarItemVisibility.Always : BarItemVisibility.Never;

            var ConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Confirm");
            btnConfirm.Visibility = ConfirmRight != null ? BarItemVisibility.Always : BarItemVisibility.Never;

            var ApprovalRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Approval");
            btnApproval.Visibility = ApprovalRight != null ? BarItemVisibility.Always : BarItemVisibility.Never;

            var ViewWIPStyleRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "ViewWIPStyle");
            btnViewWIPStyle.Visibility = ViewWIPStyleRight != null ? BarItemVisibility.Always : BarItemVisibility.Never;
        }

        protected override void OnClickAddNew()
        {
            base.OnClickAddNew();
            SampleOrder so = this.BindingSource.Current as SampleOrder;
            if (so == null) return;
            so.Table = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        }

        protected override void OnClickDelete()
        {
            SampleOrder so = this.BindingSource.Current as SampleOrder;
            if (so == null) return;
            if (so.Table.ToUpper() != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToUpper())
            {
                MessageBox.Show(string.Format("你[{0}]不能刪除[{1}]創建的SampleOrder!", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, so.Table), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            //if (so.IsComplete ?? false)
            //{
            //    MessageBox.Show("不能修改和刪除已完成之Sample Order!");
            //    return;
            //}
            base.OnClickDelete();
        }

        public void FilterSampleOrderByID(SampleOrder currentOrder)
        {
            if (currentOrder != null)
            {
                this.objListGridView.ActiveFilter.Clear();
                this.objListGridView.ActiveFilter.Add(this.objListGridView.Columns["SampleOrderID"],
                    new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[SampleOrderID]='" + currentOrder.SampleOrderID + "'"));
            }
        }

        private void SampleOrderListForm_Load(object sender, EventArgs e)
        {
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.EditorTypeName = typeof(SampleOrderDetailForm).FullName;
        }

        private void ChildIsComplete(Boolean En)
        {
            foreach (Style style in CurSampleOrder.Styles)
            {
                if (En)
                {
                    style.IsComplete = En;
                    style.CompleteDate = DateTime.Now;

                    foreach (StyleSort item in style.StyleSorts)
                    {
                        StyleSortEdition obj = (from c in item.StyleSortEditions
                                                where c.EditionID == item.StyleSortEditions.Max(p => p.EditionID)
                                                select c).FirstOrDefault();

                        if (obj != null && (obj.EditionActualDate == null || obj.BeforehandData == null))
                        {
                            obj.EditionActualDate = (obj.EditionDueDate ?? DateTime.Now);// DateTime.Now;
                            //MessageBox.Show("SortID:[" + obj.SortID + "],EditionID:[" + obj.EditionID + "] 版本的‘實際完成日期’不能为空！");
                            //return false;
                        }
                    }
                }
                else
                {
                    style.IsComplete = En;
                    style.CompleteDate = null;
                }
            }
        }

        private void barBtnComplete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (CurSampleOrder == null)
                return;

            //if (!ChildIsComplete())
            //{
            //    MessageBox.Show("還有【Style】沒有Complete!");
            //    return;
            //}

            if (CurSampleOrder.Table.ToUpper() != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToUpper())
            {
                MessageBox.Show(string.Format("你[{0}]不能Complete[{1}]創建的SampleOrder!", PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, CurSampleOrder.Table), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("確定要Complete SampleOrder嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            ChildIsComplete(true);
            CurSampleOrder.CompleteDate = DateTime.Now;
            CurSampleOrder.IsComplete = true;
            CurSampleOrder.CurrentDataContext = this.DataContext;
            CurSampleOrder.Save();
            //this.DataContext.SubmitChanges();
            //this.ControlCompleteShowState();

            if (_SampleOrderState == "Outstanding")
            {
                SampleOrder so = this.BindingSource.Current as PH.SPC.BO.SampleOrder;
                this.BindingSource.RemoveCurrent();
                ((this.DataContext) as SPCDataContext).SampleOrders.InsertOnSubmit(so);
            }
        }

        private void barBtnUnComplete_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurSampleOrder == null)
                return;

            if (MessageBox.Show("確定要Restart SampleOrder嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            ChildIsComplete(false);
            CurSampleOrder.CompleteDate = null;
            CurSampleOrder.IsComplete = false;
            CurSampleOrder.CurrentDataContext = this.DataContext;
            CurSampleOrder.Save();
            //this.DataContext.SubmitChanges();
            //this.ControlCompleteShowState();

            if (_SampleOrderState == "Complete")
            {
                SampleOrder so = this.BindingSource.Current as PH.SPC.BO.SampleOrder;
                this.BindingSource.RemoveCurrent();
                ((this.DataContext) as SPCDataContext).SampleOrders.InsertOnSubmit(so);
            }

        }

        private void objListGridView_CustomRowFilter(object sender, DevExpress.XtraGrid.Views.Base.RowFilterEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            DataView dv = view.DataSource as DataView;
            // Check whether the current row contains "USA" in the "Country" field.
            if (dv == null || dv[e.ListSourceRow] == null)
                return;
            if (_SampleOrderState == "Outstanding")
            {
                if (!((bool)dv[e.ListSourceRow]["IsComplete"]))
                {
                    // Make the current row visible.
                    e.Visible = true;
                    // Prevent default processing, so the row will be visible 
                    // regardless of the view's filter.
                    e.Handled = true;
                }
            }
            else if (_SampleOrderState == "Complete")
            {
                if (((bool)dv[e.ListSourceRow]["IsComplete"]))
                {
                    // Make the current row visible.
                    e.Visible = true;
                    // Prevent default processing, so the row will be visible 
                    // regardless of the view's filter.
                    e.Handled = true;
                }
            }
        }

        private void btnTest_ItemClick(object sender, ItemClickEventArgs e)
        {
            SampleOrderList aa = new SampleOrderList();
            PH.RWO.BO.RWOSOPCDataContext RWODB = ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            PH.RWO.BO.WorkOrder wo = RWODB.WorkOrders.FirstOrDefault(p => p.WorkOrderNo == "W370008");
            aa.AutoGenerateSPC(wo);
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<SampleOrder> lists = objListGridView.FilteredList().Cast<SampleOrder>();

                switch (item.FieldName)
                {
                    case "SampleOrderID":
                        e.TotalValue = lists.Select(p => p.SampleOrderID).Distinct().Count();
                        break;

                    case "TotalStyle":
                        e.TotalValue = lists.Select(p => p.TotalStyle).Sum();
                        break;

                    case "TotalSampleOrderQty":
                        e.TotalValue = lists.Select(p => p.TotalSampleOrderQty).Sum();
                        break;

                    case "CustomerID":
                        e.TotalValue = lists.Select(p => p.CustomerID).Distinct().Count();
                        break;

                    case "Season":
                        e.TotalValue = lists.Select(p => p.Season).Distinct().Count();
                        break;

                    case "CreateDate":
                        e.TotalValue = lists.Select(p => p.CreateDate.Value.Date).Distinct().Count();
                        break;

                    case "SuffixNoShow": // Suffix
                        e.TotalValue = lists.Count();
                        break;

                    case "ProjectNo":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo) && p.ProjectNo != "Nil").Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "SampleType":
                        e.TotalValue = lists.Select(p => p.SampleType).Distinct().Count();
                        break;
                }

            }
        }

        //object SaveAllData;
        private void barEditItemStage_EditValueChanged(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                this.DataBind();
                this.InitFormNavigator();
                this.FormatPostion();
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void btnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            SampleOrder Obj = this.BindingSource.Current as SampleOrder;
            SampleOrderDvp Rpt = new SampleOrderDvp(Obj);
            Rpt.ShowPreview();
        }

        private void btnConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.objListGridView.RowCount == 0) return;
            if (MessageBox.Show("Confirm all of SplO#?", "Confirm SplO#", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            try
            {
                objListGridView.BeginDataUpdate();
                for (int i = 0; i < this.objListGridView.RowCount; i++)
                {
                    SampleOrder obj = this.objListGridView.GetRow(i) as SampleOrder;
                    if (string.IsNullOrEmpty(obj.Confirm))
                    {
                        obj.Confirmer = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        obj.ConfirmDate = DateTime.Now;
                    }
                }
                this.DataContext.SubmitChanges();

            }
            finally
            {
                objListGridView.EndDataUpdate();
            }
        }

        private void btnApproval_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.objListGridView.RowCount == 0) return;
            if (MessageBox.Show("Approval all of SplO#?", "Approval", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            try
            {
                objListGridView.BeginDataUpdate();

                for (int i = 0; i < this.objListGridView.RowCount; i++)
                {
                    SampleOrder obj = this.objListGridView.GetRow(i) as SampleOrder;

                    //1. Qtn Way 为 Qtn Only，不需要Confirm，Susanna可以Approval
                    //2. Qtn Way 为其他的情况下，需要先Confirm，才能Approval
                    if ((obj.SamplePurpose == "Qtn Only" || !string.IsNullOrEmpty(obj.Confirmer)) &&
                        string.IsNullOrEmpty(obj.Approver))
                    {
                        obj.Approver = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        obj.ApprovalDate = DateTime.Now;
                    }
                }
                this.DataContext.SubmitChanges();
            }
            finally
            {
                objListGridView.EndDataUpdate();
            }
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "RequestDespatchDate")
            {
                object RequestDespatchDate = objListGridView.GetRowCellValue(e.RowHandle, "RequestDespatchDate");
                object DespatchDate = objListGridView.GetRowCellValue(e.RowHandle, "DespatchDate");
                if (RequestDespatchDate == null || DespatchDate != null) return;

                int DueDay = (DateTime.Now.Date - Convert.ToDateTime(RequestDespatchDate)).Days;

                if (DueDay >= -2 && DueDay <= 0)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (DueDay > -2)
                {
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "MaterialReady")
            {
                object MaterialReady = objListGridView.GetRowCellValue(e.RowHandle, "MaterialReady");
                if (MaterialReady != null && Convert.ToString(MaterialReady) == "Incomplete")
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        private void btnViewWIPStyle_ItemClick(object sender, ItemClickEventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                CreateProgramForm(typeof(ViewStyleListForm), string.Format("View Style - {0}", _SampleOrderState), true, new object[] { _SampleOrderState }, null);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

    }
}
