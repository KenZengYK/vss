using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC1.BO;

namespace PH.SPC1.UI
{
    public partial class ANFFListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ANFFListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ANFFDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }

        private SampleOrder _sampleOrder;
        public ANFFListForm(SampleOrder sampleOrder)
            : this()
        {
            this._sampleOrder = sampleOrder;
        }


        /// <summary>
        /// 數據綁定
        /// </summary>
        public override void DataBind()
        {
            DataHelper helper = new DataHelper();
            this.DataContext = helper.DataContext;
            if (this._sampleOrder == null)
            {
                this.BindingSource.DataSource = helper.GetANFFList();
            }
            else
            {
                this.BindingSource.DataSource = helper.GetANFFList(_sampleOrder.SampleOrderID);
            }
            base.DataBind();
        }


        private void ANFFListForm_Load(object sender, EventArgs e)
        {
            //PH.SPC1.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            //this.DataContext = context;
            //if (this._sampleOrder == null)
            //{
            //    this.BindingSource.DataSource = from c in context.ANFFs select c;
            //}
            //else
            //{
            //    this.BindingSource.DataSource = from c in context.ANFFs 
            //                                       where c.SampleOrderID == this._sampleOrder.SampleOrderID
            //                                       select c;
            //}
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<ANFF> list = new List<ANFF>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                ANFF anff = this.advBandedGridView1.GetRow(i) as ANFF;
                if (anff != null)
                    list.Add(anff);
            }
            SPCPrintHelper.PrintANFF(list);
        }

        List<DevExpress.XtraGrid.Columns.GridColumn> _readOnlyColums;
        private void GetReadOnlyColums()
        {
            this.advBandedGridView1.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.advBandedGridView1_ShowingEditor);
            _readOnlyColums = new List<DevExpress.XtraGrid.Columns.GridColumn>();
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.advBandedGridView1.Columns)
            {
                if (col.OptionsColumn.AllowEdit) continue;
                _readOnlyColums.Add(col);
            }
        }
        private void advBandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView view = sender as DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView;
            e.Cancel = _readOnlyColums.Contains(view.FocusedColumn);
        }
    }
}
