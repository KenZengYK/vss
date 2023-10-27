using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.RWO.BackEnd.ReportJob
{
    public partial class SelectCustomerForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectCustomerForm()
        {
            InitializeComponent();
            InitData();
        }
        private void InitData()
        {
            PH.RWO.BO.CustomerCodeList list = new PH.RWO.BO.CustomerCodeList();
            var aa = list.GetAllData();
            this.bindingSource1.DataSource = aa;
        }

        public string Customer
        {
            get
            {
                PH.RWO.BO.CustomerCode c = this.bindingSource1.Current as PH.RWO.BO.CustomerCode;
                if (c == null) return "";
                return c.Customer;
            }
        }
    }
}