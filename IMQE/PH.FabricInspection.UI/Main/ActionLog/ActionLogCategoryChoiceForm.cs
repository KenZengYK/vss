using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Main
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

        FabricInspectionDataContext db;
        public ActionLogCategoryChoiceForm(FabricInspectionDataContext Adb)
        {
            InitializeComponent();
            db = Adb;
            this.bindingSource1.DataSource = db.ActionLogCategories;
            gridView1.BestFitColumns();
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.btnOK.PerformClick();
        }

    }
}