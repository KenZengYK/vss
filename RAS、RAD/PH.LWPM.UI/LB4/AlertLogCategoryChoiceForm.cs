using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB4
{
    public partial class AlertLogCategoryChoiceForm : DevExpress.XtraEditors.XtraForm
    {
        RAPLQDataContext db;

        public AlertLogCategory SelectItem
        {
            get
            {
                return this.bindingSource.Current as AlertLogCategory;
            }

        }

        public AlertLogCategoryChoiceForm(RAPLQDataContext ADB)
        {
            InitializeComponent();
            db = ADB;
            this.bindingSource.DataSource = db.AlertLogCategories;
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.btnOK.PerformClick();
        }

    }
}