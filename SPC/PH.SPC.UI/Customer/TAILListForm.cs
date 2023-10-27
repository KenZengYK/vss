using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraTab;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using PH.SPC1.BO;

namespace PH.SPC1.UI
{
    public partial class TAILListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public TAILListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(TAILDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
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
                this.BindingSource.DataSource = helper.GetTAILList();
            }
            else
            {
                this.BindingSource.DataSource = helper.GetTAILList(_sampleOrder.SampleOrderID);
            }
            base.DataBind();
        }

        private void TAILListForm_Load(object sender, EventArgs e)
        {
        //{
        //    this.DataContext = DBController.SPCDB;
        //    if (_sampleOrder != null)
        //        this.BindingSource.DataSource = from c in DBController.SPCDB.TAILs where c.SampleOrderID == this._sampleOrder.SampleOrderID select c;
        //    else
        //        this.BindingSource.DataSource = from c in DBController.SPCDB.TAILs select c;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            //this.btnSampleOrder.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnSampleOrder_Click);
            //this.btnSosMade.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnSosMade_ButtonClick);
            //this.btnCustStyle.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnCustStyle_ButtonClick);
            //quotationSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(quotationSosButtonEdit_ButtonClick);
            //SsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(SsSosButtonEdit_Click);
            //RvsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(RvsSosButtonEdit_Click);
            //PsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(PsSosButtonEdit_Click);
        }

        void PsSosButtonEdit_Click(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("PS");
        }

        void RvsSosButtonEdit_Click(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("RVS");
        }

        void SsSosButtonEdit_Click(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("SS");
        }

        void quotationSosButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("Quotation");
        }

        void btnCustStyle_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TAIL spcTAIL = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as TAIL;
            if (spcTAIL != null)
            {
                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcTAIL, out tabControl, out c);

                OpenStyle(tabControl, spcTAIL);
            }
        }

        void btnSosMade_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("DVP");
        }

        private void OpenStyleSord2(string styleSortID)
        {
            TAIL spcTAIL = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as TAIL;
            if (spcTAIL != null)
            {
                bool exists = false;
                foreach (StyleSort styleSort in spcTAIL.Style.StyleSorts)
                {
                    if (styleSort.SortID == styleSortID)
                    {
                        exists = true;
                        break;
                    }
                }
                if (!exists)
                {
                    if (this.objListGridView.RowCount == 0)
                    {
                        MessageBox.Show("還沒有【" + styleSortID + "】的樣板種類!");
                        return;
                    }
                }

                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcTAIL, out tabControl, out c);

                OpenStyle(tabControl, spcTAIL);

                OpenStyleSord(tabControl, styleSortID);
            }
        }

        private void OpenStyleSord(XtraTabControl tabControl, string styleSortID)
        {
            Control c = null;
            ExistsAControl(tabControl.SelectedTabPage, typeof(SampleOrderDetailForm), ref c);
            SampleOrderDetailForm frmSampleEdit = c as SampleOrderDetailForm;

            if (frmSampleEdit != null)
            {
                ExistsAControl(tabControl.SelectedTabPage, typeof(SampleOrderDetailForm), ref c);
                StyleDetailForm frmStyle = c as StyleDetailForm;

                if (frmStyle != null)
                {
                    frmStyle.ShowStyleSheet();

                    frmStyle._frmStyleSort.ShowStyleSort(styleSortID);
                }
            }
        }

        void btnSampleOrder_Click(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TAIL spcTAIL = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as TAIL;
            if (spcTAIL != null)
            {
                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcTAIL, out tabControl, out c);
            }
        }

        private void OpenStyle(XtraTabControl tabControl, TAIL spcTAIL)
        {
            Control c = null;
            ExistsAControl(tabControl.SelectedTabPage, typeof(SampleOrderDetailForm), ref c);
            SampleOrderDetailForm frmSampleEdit = c as SampleOrderDetailForm;

            if (frmSampleEdit != null)
            {
                Style style = spcTAIL.Style;

                frmSampleEdit._frmStyle.FilterStyle(style);
                //frmSampleEdit._frmStyle.ShowCurrent();
            }
        }

        private void OpenSampleOrder(TAIL spcTAIL, out XtraTabControl tabControl, out Control c)
        {
            SampleOrder sampleOrder = spcTAIL.Style.SampleOrder;

            XtraTabPage tabPage = GetTabPage(this.Parent);
            tabControl = tabPage.TabControl;
            SampleOrderListForm frmOrderList = null;
            c = null;
            if (!ExistsAControl(tabControl, typeof(SampleOrderListForm), ref c))
            {
                tabPage = new XtraTabPage();
                tabPage.Text = "Sample Order";
                frmOrderList = new SampleOrderListForm();
                frmOrderList.Parent = tabPage;
                frmOrderList.Dock = DockStyle.Fill;
                tabControl.TabPages.Add(tabPage);

                frmOrderList.Visible = true;
            }
            else
            {
                frmOrderList = c as SampleOrderListForm;

                frmOrderList.SampleOrderView.ActiveFilter.Clear();
            }
            tabControl.SelectedTabPage = frmOrderList.Parent as XtraTabPage;
            frmOrderList.FilterSampleOrderByID(sampleOrder);

            //frmOrderList.ShowCurrent();
        }

        internal bool _fromSampleOrder = false;
        public TAILListForm(SampleOrder sampleOrder)
        {
            InitializeComponent();

            _fromSampleOrder = true;
            _sampleOrder = sampleOrder;

            foreach (Style style in _sampleOrder.Styles)
                _spcList.Add(style.TAIL);
            // _spcList.AddRange(style.TAIL);

            //this.InitData();
            this.EditorTypeName = typeof(TAILDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            GetReadOnlyColums();
        }

        private SampleOrder _sampleOrder;
        List<TAIL> _spcList = new List<TAIL>();


        bool ExistsAControl(Control Parent, Type ControlType, ref Control child)
        {
            if (Parent == null)
                return false;
            if (Parent.GetType() == ControlType)
            {
                child = Parent;
                return true;
            }

            foreach (Control c in Parent.Controls)
            {
                bool Result = ExistsAControl(c, ControlType, ref child);
                if (Result)
                    return true;
            }

            return false;
        }


        XtraTabPage GetTabPage(Control c)
        {
            if (c == null)
                return null;

            if (c is XtraTabPage)
                return c as XtraTabPage;

            return GetTabPage(c.Parent);
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            List<TAIL> list = new List<TAIL>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                TAIL tail = this.advBandedGridView1.GetRow(i) as TAIL;
                if (tail != null)
                    list.Add(tail);
            }
            SPCPrintHelper.PrintTAIL(list);
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
