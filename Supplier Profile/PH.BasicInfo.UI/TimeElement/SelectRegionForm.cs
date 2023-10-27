using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SelectRegionForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectRegionForm()
        {
            InitializeComponent();

            BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.bsRegion.DataSource = db.SupplierRegions;
        }

        public SupplierRegion SelectedSupplierRegionObj
        {
            get
            {
                return this.bsRegion.Current as SupplierRegion;
            }
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

    }
}