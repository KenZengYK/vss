using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using DevExpress.XtraGrid;
using PH.Platform.ExtendLibrary;

namespace PH.SPC.UI
{
    public partial class StyleSortListForm : PH.Platform.UI.CS.UI2.ListForm //PH.UI.UI2.ParentListForm
    {
        public StyleSortListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleSortDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        Style _style = null;

        //public StyleSortListForm(Style style)
        //{
        //    InitializeComponent();
        //    this.EditorTypeName = typeof(StyleSortDetailForm).FullName;
        //    _style = style;
        //    this.DataSource = style.StyleSorts;

        //}

        private void StyleSortListForm_Load(object sender, EventArgs e)
        {

            //this._style = (this.CurBindingSource.DataSource as System.Data.Linq.EntitySet<StyleSort>)[0].Style; //his.CurBindingSource.Current as Style;
            //this.DataSource = style.StyleSorts;
            //this.EditorTypeName = typeof(StyleSortDetailForm).FullName;


        }


        //protected override void AddNewObject()
        //{
        //    if (_style.IsComplete ?? false) return;

        //    base.AddNewObject();
        //}

        public void ShowStyleSort(string sortID)
        {
            this.objListGridView.ActiveFilter.Clear();
            this.objListGridView.ActiveFilter.Add(this.objListGridView.Columns["SortID"],
                              new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[SortID]='" + sortID + "'"));


            //OpenCurrent();
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<StyleSort> lists = objListGridView.FilteredList().Cast<StyleSort>();

                switch (item.FieldName)
                {
                    case "SampleOrderNoShow":
                        e.TotalValue = lists.Select(p => p.SampleOrderNoShow).Distinct().Count();
                        break;

                    case "ChildSampleOrderSuffixShow":
                        e.TotalValue = lists.Select(p => p.ChildSampleOrderSuffixShow).Distinct().Count();
                        break;

                    case "PHStyleNoShow":
                        e.TotalValue = lists.Select(p => p.PHStyleNoShow).Distinct().Count();
                        break;

                    case "SortID":
                        e.TotalValue = lists.Select(p => p.SortID).Distinct().Count();
                        break;

                    case "EditionID":
                        e.TotalValue = lists.Select(p => p.EditionID).Distinct().Count();
                        break;

                    case "MarkSource":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.MarkSource)).Select(p => p.MarkSource).Distinct().Count();
                        break;

                    case "MaterialStatus":
                        e.TotalValue = lists.Where(p => !string.IsNullOrEmpty(p.MaterialStatus)).Select(p => p.MaterialStatus).Distinct().Count();
                        break;
                }

            }
        }

        //protected override void DeleteCurrent()
        //{
        //    this.BindingSource.EndEdit();
        //    DevExpress.XtraGrid.Views.Base.ColumnView focusedView = (DevExpress.XtraGrid.Views.Base.ColumnView)this.objListGridControl.FocusedView;
        //    PH.Platform.BO.BaseEntity row = focusedView.GetRow(focusedView.FocusedRowHandle) as PH.Platform.BO.BaseEntity;
        //    if (row == null) return;

        //    SPCDataContext context = this.DataContext as SPCDataContext;
        //    IList<object> updateList = context.GetChangeSet().Updates;
        //    IList<object> insertList = context.GetChangeSet().Inserts;
        //    List<object> deleteList = new List<object>();
        //    deleteList.Add(row);

        //    base.DeleteCurrent();

        //    context.AfterSave(updateList, insertList, deleteList);
        //}
    }
}
