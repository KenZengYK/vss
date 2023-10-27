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
    public partial class StyleSortEditionListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public StyleSortEditionListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleSortEditionDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public StyleSortEditionListForm(StyleSort styleSort)
        {
            InitializeComponent();

            //StyleSortEditionList = styleSort.StyleSortEditions;

            this.BindingSource.DataSource = styleSort.StyleSortEditions;
            this.EditorTypeName = typeof(StyleSortEditionDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<StyleSortEdition> lists = objListGridView.FilteredList().Cast<StyleSortEdition>();

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

                    case "SampleTypeShow":
                        e.TotalValue = lists.Select(p => p.SampleTypeShow).Distinct().Count();
                        break;

                    case "ShowEditionID":
                        e.TotalValue = lists.Select(p => p.ShowEditionID).Distinct().Count();
                        break;

                    case "SampleEditionDespatchQtyShow":
                        e.TotalValue = lists.Select(p => p.SampleEditionDespatchQtyShow).Sum();
                        break;

                    case "SampleEditionKeepQtyShow":
                        e.TotalValue = lists.Select(p => p.SampleEditionKeepQtyShow).Sum();
                        break;
                }

            }
        }
        //protected override void DeleteCurrent()
        //{
        //    //this.BindingSource.EndEdit();
        //    DevExpress.XtraGrid.Views.Base.ColumnView focusedView = (DevExpress.XtraGrid.Views.Base.ColumnView)this.objListGridControl.FocusedView;
        //    PH.Platform.BO.BaseEntity row = focusedView.GetRow(focusedView.FocusedRowHandle) as PH.Platform.BO.BaseEntity;
        //    if (row == null) return;

        //    SPCDataContext context = this.DataContext as SPCDataContext;
        //    IList<object> updateList = context.GetChangeSet().Updates;
        //    IList<object> insertList = context.GetChangeSet().Inserts;
        //    List<object> deleteList = new List<object>();
        //    deleteList.Add(row);

        //    context.AfterSave(updateList, insertList, deleteList);

        //    base.DeleteCurrent();

        //}
    }
}
