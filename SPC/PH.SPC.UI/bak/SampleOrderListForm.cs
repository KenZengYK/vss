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
    public partial class SampleOrderListForm : PH.UI.UI1.SingleListForm
    {
        public SampleOrderListForm()
        {
            InitializeComponent();
            this.InitData();
            this.CanDelete = true;
            this.EditorTypeName = typeof(SampleOrderDetailForm).FullName;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
     

        internal DevExpress.XtraGrid.Views.Grid.GridView SampleOrderView
        {
            get
            {
                return this.gridView1;
            }
        }

        private void InitData()
        {
            //this.DataSource = OODBController.GetAllSPC_Mst();
            this.DataSource = OODBController.DB.GetAllObjects<PH.SPC.BO.SampleOrder>();
            this.gridView1.OptionsBehavior.Editable = false;            
        }

        public void FilterSampleOrderByID(SampleOrder currentOrder)
        {
            if (currentOrder != null)
            {
                this.gridView1.ActiveFilter.Clear();
                this.gridView1.ActiveFilter.Add(this.gridView1.Columns["SampleOrderID"],
                    new DevExpress.XtraGrid.Columns.ColumnFilterInfo("[SampleOrderID]='"+currentOrder.SampleOrderID + "'"));
            }
        }

        public void ShowCurrent()
        {
            OpenCurrent();
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
        }
    }
}
