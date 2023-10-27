using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class ActionLogCategoryChoiceForm : DevExpress.XtraEditors.XtraForm
    {
        public ActionLogCategory SelectItem
        {
            get
            {
                return this.bindingSource1.Current as ActionLogCategory;
            }
        }

        POPCDataContext db;
        public ActionLogCategoryChoiceForm(POPCDataContext Adb)
        {
            InitializeComponent();
            db = Adb;
            this.bindingSource1.DataSource = db.ActionLogCategories.OrderBy(p => p.Code);
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.btnOK.PerformClick();
        }

    }
}