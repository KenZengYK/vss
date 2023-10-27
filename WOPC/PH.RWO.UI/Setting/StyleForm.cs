using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using System.Data.Linq;
using System.Linq;

namespace PH.RWO.UI.Setting
{
    public partial class StyleForm : DevExpress.XtraEditors.XtraForm
    {
        //private RWOSOPCDataContext context;
        //private string customer;
        //private string customercode;
        //private string brand;
        //private string category;
        //private string styleno;
        //private CustomerCode curcust;
        //private List<BF> CategoryLst;

        private CustomerBrandCategory _sourceCategory;
        public CustomerBrandCategory SelectedCategory
        {
            get
            {
                return this.bindingSource1.Current as CustomerBrandCategory;
                //if (LV.SelectedItems == null) return null;
                //return context.CustomerBrandCategories.Where(P => P.Customer == this.customer && P.CustCode == this.customercode && P.Brand == this.brand && P.Category == LV.SelectedItems[0].Text && P.StyleNo == LV.SelectedItems[0].SubItems[1].Text).FirstOrDefault();
            }
        }

        public StyleForm()
        {
            InitializeComponent();
        }
        public StyleForm(CustomerBrandCategory customerBrandCategory)
            : this()
        {
            _sourceCategory = customerBrandCategory;
            InitData();
        }
        //public StyleForm(RWOSOPCDataContext _context, string _customer, string _customercode, string _brand, CustomerCode _curcust)
        //{
        //    InitializeComponent();
        //    this.context = _context;
        //    this.customer = _customer;
        //    this.customercode = _customercode;
        //    this.brand = _brand;
        //    this.curcust = _curcust;


        //    //this.CategoryLst = _categorylst;


        //}

        private void StyleForm_Load(object sender, EventArgs e)
        {
            //LV.View = View.Details;
            //LV.FullRowSelect = true;
            //ColumnHeader col1 = new ColumnHeader();
            //col1.Text = "類型";
            //LV.Columns.Add(col1);
            //ColumnHeader col2 = new ColumnHeader();
            //col2.Text = "款號";
            //col2.Width = 200;
            //LV.Columns.Add(col2);

            //foreach (CustomerBrandCategory item in curcust.CustomerBrandCategories)
            //{
            //    ListViewItem ii = new ListViewItem();
            //    ii.Text = item.Category;
            //    ii.SubItems.Add(item.StyleNo);
            //    LV.Items.Add(ii);
            //}


        }

        private void InitData()
        {
            var aa = from a in _sourceCategory.CustomerCode.CustomerBrandCategories
                     where a.GID != _sourceCategory.GID
                     select a;
            this.bindingSource1.DataSource = aa;
        }
    }
}