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
    public partial class CALDListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CALDListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }


        public override void DataBind()
        {
            DataHelper helper = new DataHelper();
            this.DataContext = helper.DataContext;
            if (this._sampleOrder == null)
            {
                this.BindingSource.DataSource = helper.GetCALDList();
            }
            else
            {
                this.BindingSource.DataSource = helper.GetCALDList(_sampleOrder.SampleOrderID);
            }
            base.DataBind();
        } 

        private void ETAMListForm_Load(object sender, EventArgs e)
        {
            //PH.SPC1.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            //this.DataContext = context;
            //if (_sampleOrder != null)
            //    this.BindingSource.DataSource = from c in context.CALDs where c.SampleOrderID == this._sampleOrder.SampleOrderID select c;
            //else
            //    this.BindingSource.DataSource = from c in context.CALDs select c;

            //this.InitData();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            //Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public CALDListForm(SampleOrder sampleOrder)
        {
            InitializeComponent();

            _sampleOrder = sampleOrder;


            foreach (Style style in _sampleOrder.Styles)
                _spcList.Add(style.CALD);
            //_spcList.AddRange(style.ETAM);

            this.InitData();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }

        List<CALD> _spcList = new List<CALD>();
        private SampleOrder _sampleOrder;


        private void InitData()
        {
            //this.DataSource = OODBController.GetAllSPC_Mst();

            this.DataSource = _spcList; //OODBController.DB.GetAllObjects<PH.OA.SPC.BO.StyleSpcLARD>();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<CALD> list = new List<CALD>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                CALD lard = this.advBandedGridView1.GetRow(i) as CALD;
                if (lard != null)
                    list.Add(lard);
            }
            SPCPrintHelper.PrintCALD(list);
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
