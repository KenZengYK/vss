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
    public partial class StyleListForm : PH.UI.UI2.ParentListForm
    {
        public StyleListForm()
        {
            InitializeComponent();
        }


        public StyleListForm(SampleOrder sampleOrder)
        {
            InitializeComponent();

            SetSampleOrder(sampleOrder);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        SampleOrder _sampleOrder = null;
        public void SetSampleOrder(SampleOrder sampleOrder)
        {
            _sampleOrder = sampleOrder;           
            this.DataSource = sampleOrder.Styles;
            this.EditorTypeName = typeof(StyleDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;

            RefreshData();

        }

        internal void RefreshData()
        {
            this.gridView1.ActiveFilter.Clear();
            this.gridView1.ActiveFilter.Add(this.gridView1.Columns["StyleID"],
                new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[StyleID]='AA'"));
            this.gridView1.ActiveFilter.Clear();
        }

        internal SampleOrderDetailForm _sampleOrderEdit;

        protected override void AddNew()
        {
            //if (_sampleOrder != null)
            //    if (_sampleOrder.IsComplete)
            //        return;

            base.AddNew();

            _sampleOrderEdit.CreateCustomerSPC();
        }


        public void FilterStyle(Style currentStyle)
        {
            if (currentStyle != null)
            {
                this.gridView1.ActiveFilter.Clear();
                this.gridView1.ActiveFilter.Add(this.gridView1.Columns["StyleID"],
                    new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[StyleID]='" + currentStyle.StyleID + "'"));
            }
        }        

        internal void ShowCurrent()
        {
            OpenCurrent();
        }
    }
}
