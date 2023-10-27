using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.RWO.UI.WOc
{
    public partial class SampleQueryForm : DevExpress.XtraEditors.XtraForm
    {
        public SampleQueryForm()
        {
            InitializeComponent();
            BindingCustomer();
        }

        public string Customer { get { return this.cbCustomer.Text; } }
        public string SO { get { return this.teSO.Text; } }
        public string ProjectNo { get { return this.teProject.Text; } }
        public string WO { get { return this.memoEdit_WONO.Text.Replace("\r","").Replace("\n",""); } }


        private void btnOK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Customer) && string.IsNullOrEmpty(SO) && string.IsNullOrEmpty(ProjectNo) && string.IsNullOrEmpty(WO))
            {
                MessageBox.Show("Must input a Criteria!");
                return;
            }

            this.DialogResult = DialogResult.OK;
        }

        private void BindingCustomer()
        {
            PH.RWO.BO.CustomerCodeList list = new PH.RWO.BO.CustomerCodeList();
            var aa = list.GetCustomers();
           foreach (var a in aa)
           {
               this.cbCustomer.Properties.Items.Add(a);
           }
        
        }
    }
}