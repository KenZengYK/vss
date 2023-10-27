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

using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class LARDListForm1 : PH.UI.UI1.SingleListForm
    {
        public LARDListForm1()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(LARDDetailForm).FullName;
        }

        private void LARDListForm_Load(object sender, EventArgs e)
        {
            this.DataContext = DBController.SPCDB;
            if (_sampleOrder!=null)
                this.CurBindingSource.DataSource = from c in DBController.SPCDB.LARDs where c.SampleOrderID==this._sampleOrder.SampleOrderID select c;
            else
                this.CurBindingSource.DataSource = from c in DBController.SPCDB.LARDs select c;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            this.btnSampleOrder.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnSampleOrder_Click);
            this.btnSosMade.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnSosMade_ButtonClick);
            this.btnCustStyle.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(btnCustStyle_ButtonClick);
            quotationSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(quotationSosButtonEdit_ButtonClick);
            SsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(SsSosButtonEdit_Click);
            RvsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(RvsSosButtonEdit_Click);
            PsSosButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(PsSosButtonEdit_Click);
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
            LARD spcLard = this.advBandedGridView1.GetRow(this.advBandedGridView1.FocusedRowHandle) as LARD;
            if (spcLard != null)
            {
                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcLard, out tabControl, out c);

                OpenStyle(tabControl, spcLard);
            }
        }

        void btnSosMade_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenStyleSord2("DVP");
        }

        private void OpenStyleSord2(string styleSortID)
        {
            LARD spcLard = this.advBandedGridView1.GetRow(this.advBandedGridView1.FocusedRowHandle) as LARD;
            if (spcLard != null)
            {
                bool exists = false;
                foreach (StyleSort styleSort in spcLard.Style.StyleSorts)
                {
                    if (styleSort.SortID == styleSortID)
                    {
                        exists = true;
                        break;
                    }
                }
                if (!exists)
                {
                    if (this.advBandedGridView1.RowCount == 0)
                    {
                        MessageBox.Show("還沒有【" + styleSortID + "】的樣板種類!");
                        return;
                    }
                }

                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcLard, out tabControl, out c);

                OpenStyle(tabControl, spcLard);

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
            LARD spcLard = this.advBandedGridView1.GetRow(this.advBandedGridView1.FocusedRowHandle) as LARD;
            if (spcLard != null)
            {
                XtraTabControl tabControl;
                Control c;
                OpenSampleOrder(spcLard, out tabControl, out c);
            }
        }

        private void OpenStyle(XtraTabControl tabControl, LARD spcLard)
        {
            Control c = null;
            ExistsAControl(tabControl.SelectedTabPage, typeof(SampleOrderDetailForm), ref c);
            SampleOrderDetailForm frmSampleEdit = c as SampleOrderDetailForm;

            if (frmSampleEdit != null)
            {
                Style style = spcLard.Style;

                frmSampleEdit._frmStyle.FilterStyle(style);
                //frmSampleEdit._frmStyle.ShowCurrent();
            }
        }

        private void OpenSampleOrder(LARD spcLard, out XtraTabControl tabControl, out Control c)
        {
            SampleOrder sampleOrder = spcLard.Style.SampleOrder;

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
        public LARDListForm1(SampleOrder sampleOrder)
        {
            InitializeComponent();

            _fromSampleOrder = true;
            _sampleOrder = sampleOrder;

            foreach (Style style in _sampleOrder.Styles)
                _spcList.Add(style.LARD);
               // _spcList.AddRange(style.LARD);

            //this.InitData();
            this.EditorTypeName = typeof(LARDDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        private SampleOrder _sampleOrder;
        List<LARD> _spcList = new List<LARD>();


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
            List<LARD> list = new List<LARD>();
            for (int i = 0; i < this.advBandedGridView1.DataRowCount; i++)
            {
                LARD lard = this.advBandedGridView1.GetRow(i) as LARD;
                if (lard != null)
                    list.Add(lard);
            }
            SPCPrintHelper.PrintLARD(list);
        }

    }
}
