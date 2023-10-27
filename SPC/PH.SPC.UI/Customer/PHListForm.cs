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
    public partial class PHListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PHListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;

            GetReadOnlyColums();
        }


        public PHListForm(SampleOrder sampleOrder)
        {
            InitializeComponent();

            _sampleOrder = sampleOrder;


            foreach (Style style in _sampleOrder.Styles)
                _spcList.Add(style.PH);
            //_spcList.AddRange(style.ETAM);

            this.InitData();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }

        List<PH.SPC1.BO.PH> _spcList = new List<PH.SPC1.BO.PH>();
        private SampleOrder _sampleOrder;


        
        private void InitData()
        {
            //this.DataSource = OODBController.GetAllSPC_Mst();

            this.DataSource = _spcList; //OODBController.DB.GetAllObjects<PH.OA.SPC.BO.StyleSpcLARD>();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<PH.SPC1.BO.PH> list = new List<PH.SPC1.BO.PH>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                PH.SPC1.BO.PH lard = this.advBandedGridView1.GetRow(i) as PH.SPC1.BO.PH;
                if (lard != null)
                    list.Add(lard);
            }
            SPCPrintHelper.PrintPHDVP(list);
        }

        public override void DataBind()
        {
            DataHelper helper = new DataHelper();
            this.DataContext = helper.DataContext;
            if (this._sampleOrder == null)
            {
                this.BindingSource.DataSource = helper.GetPHList();
            }
            else
            {
                this.BindingSource.DataSource = helper.GetPHList(_sampleOrder.SampleOrderID);
            }
            base.DataBind();
        }
        private void PHListForm_Load(object sender, EventArgs e)
        {
            //PH.SPC1.BO.SPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<SPCDataContext>();
            //this.DataContext = context;
            //if (_sampleOrder != null)
            //    this.BindingSource.DataSource = from c in context.PHs where c.SampleOrderID == this._sampleOrder.SampleOrderID select c;
            //else
            //    this.BindingSource.DataSource = from c in context.PHs select c;

            //this.InitData();
            this.EditorTypeName = typeof(ETAMDetailForm).FullName;
            //Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        List<DevExpress.XtraGrid.Columns.GridColumn> _readOnlyColums;
        private void GetReadOnlyColums()
        {
            _readOnlyColums = new List<DevExpress.XtraGrid.Columns.GridColumn>();
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.advBandedGridView1.Columns)
            {
                if (col.OptionsColumn.AllowEdit) continue;
                _readOnlyColums.Add(col);
            }
        }
        private void advBandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView view=sender as DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView;
            e.Cancel = _readOnlyColums.Contains(view.FocusedColumn);
        }


    }
}
