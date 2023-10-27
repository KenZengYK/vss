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
    public partial class CMYRListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CMYRListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(CMYRDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }

        private SampleOrder _sampleOrder;
        public CMYRListForm(SampleOrder sampleOrder)
            : this()
        {
            this._sampleOrder = sampleOrder;
        }


        public override void DataBind()
        {
            DataHelper helper = new DataHelper();
            this.DataContext = helper.DataContext;
            if (this._sampleOrder == null)
            {
                this.BindingSource.DataSource = helper.GetCMYRList();
            }
            else
            {
                this.BindingSource.DataSource = helper.GetCMYRList(_sampleOrder.SampleOrderID);
            }
            base.DataBind();
        }

        private void CMYRListForm_Load(object sender, EventArgs e)
        {
            //PH.SPC1.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            //this.DataContext = context;
            //if (this._sampleOrder == null)
            //{
            //    this.BindingSource.DataSource = from c in context.CMYRs select c;
            //}
            //else
            //{
            //    this.BindingSource.DataSource = from c in context.CMYRs 
            //                                       where c.SampleOrderID == this._sampleOrder.SampleOrderID
            //                                       select c;
            //}
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<CMYR> list = new List<CMYR>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                CMYR cmyr = this.advBandedGridView1.GetRow(i) as CMYR;
                if (cmyr != null)
                    list.Add(cmyr);
            }
            SPCPrintHelper.PrintCMYR(list);
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
