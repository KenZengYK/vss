using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MIDc.BO;
using System.Linq;

namespace PH.MIDc.UI.Config
{
    public partial class BrandDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        string ABrandCode = "";
        public BrandDetailForm()
        {
            InitializeComponent();
         
             ABrandCode = txtBrandCode.Text;
        }

        protected override void SaveCurrent()
        {
            if (checkInfo())
            {
                base.SaveCurrent();
            }
        }

        public override void EditCurrent()
        {

            base.EditCurrent();
            txtBrandCode.Enabled = string.IsNullOrEmpty(txtBrandCode.Text);
            //string CheckSameInfo = db.Brands.Where(dr => dr.BrandCode == txtBrandCode.Text).Select(dr => dr.BrandCode).FirstOrDefault();
            //if (!string.IsNullOrEmpty(CheckSameInfo))
            //{
            //    MessageBox.Show("The BrandCode already exists", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    this.txtBrandCode.Text = ABrandCode;
            //    return;

            //}
        }

        PH.MIDc.BO.MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();

        bool checkInfo() 
        {
            if (string.IsNullOrEmpty(this.txtBrandCode.Text))
            {
                MessageBox.Show("BrandCode can't be empty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false; 
            }
            if (string.IsNullOrEmpty(this.txtBrandName_EN.Text))
            {
                MessageBox.Show("BrandName_EN can't be empty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false; 
            }

            if (string.IsNullOrEmpty(this.txtBrandName_CN.Text))
            {
                MessageBox.Show("BrandName_CN can't be empty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (txtBrandCode.Enabled) 
            {
                string CheckSameInfo = db.Brands.Where(dr => dr.BrandCode == txtBrandCode.Text).Select(dr => dr.BrandCode).FirstOrDefault();
                if (!string.IsNullOrEmpty(CheckSameInfo))
                {
                    MessageBox.Show("The BrandCode already exists", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.txtBrandCode.Focus();
                    return false;
                }
                return true;
            }
           
            return true;


        }
    }
}