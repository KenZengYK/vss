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
using System.Linq;

namespace PH.BasicInfo.UI.Report
{
    public partial class SupplierProfileForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
        public SupplierProfileForm()
        {
            InitializeComponent();

            cbERPSupplier.Properties.Items.AddRange(db.SupplierProfiles.Where(dr => dr.DeleteFlag==null || dr.DeleteFlag ==false).Select(dr => dr.ERPSupplier).OrderBy(dr=>dr).ToList());


        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(cbERPSupplier.Text)) 
            {
                MessageBox.Show("Õˆßx“ñERPSupplier", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return; 
            }
            SupplierProfile Obj = db.SupplierProfiles.Where(dr => dr.ERPSupplier == cbERPSupplier.Text).FirstOrDefault();
            SupplierProfileForAEORpt Rpt = new SupplierProfileForAEORpt(Obj);
            Rpt.ShowPreview();

        }
    }
}