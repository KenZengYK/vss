using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class AlertLogCategoryChoiceForm : DevExpress.XtraEditors.XtraForm
    {
        MobileQCDataContext db;

        public FirstPass_AlertLogCategory SelectItem
        {
            get
            {
                return this.bindingSource.Current as FirstPass_AlertLogCategory;
            }

        }

        public AlertLogCategoryChoiceForm(MobileQCDataContext ADB)
        {
            InitializeComponent();
            db = ADB;
            this.bindingSource.DataSource = db.FirstPass_AlertLogCategories;
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.btnOK.PerformClick();
        }

    }
}