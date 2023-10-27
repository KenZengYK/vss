using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleSortListForm : PH.UI.UI2.ParentListForm
    {
        public StyleSortListForm()
        {
            InitializeComponent();

            this.EditorTypeName = typeof(StyleSortDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        Style _style = null;

        public StyleSortListForm(Style style)
        {
            InitializeComponent();
            _style = style;
            this.DataSource = style.StyleSort;
            this.EditorTypeName = typeof(StyleSortDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        internal void RefreshData()
        {
            this.gridView1.ActiveFilter.Clear();
            this.gridView1.ActiveFilter.Add(this.gridView1.Columns["SortID"],
                              new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[SortID]='AAAA'"));
            this.gridView1.ActiveFilter.Clear();
        }

        protected override void AddNew()
        {
            if (_style.IsComplete)
                return;
            
            base.AddNew();
        }


        public void ShowStyleSort(string sortID)
        {
            this.gridView1.ActiveFilter.Clear();
            this.gridView1.ActiveFilter.Add(this.gridView1.Columns["SortID"],
                              new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[SortID]='" + sortID + "'"));


            OpenCurrent();
        }        
    }
}
