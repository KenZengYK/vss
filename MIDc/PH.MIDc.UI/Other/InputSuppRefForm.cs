using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using PH.Platform.BO; 
using PH.MIDc.BO;

namespace PH.MIDc.UI.Other
{
    public partial class InputSuppRefForm : DevExpress.XtraEditors.XtraForm
    {
        public InputSuppRefForm()
        {
            InitializeComponent();
        }
        public InputSuppRefForm(string caption):this()
        {
            this.Text = caption;
        }
        public string SupplierReference { get; set; }
        private void btnOK_Click(object sender, EventArgs e)
        {
            if (!CheckMaterial(this.editSuppRef.Text)) return;

            this.SupplierReference = this.editSuppRef.Text;
            this.DialogResult = DialogResult.OK;
        }

        private bool CheckMaterial(string suppRef)
        {
            bool result = true;
            if (string.IsNullOrEmpty(suppRef)) return false;
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            int aa = (from c in context.Details
                      where c.SuppRef == suppRef
                      select c).Count();

            if (aa != 0)
            {
                MessageBox.Show("该 SupplierReference 已存在! 请确认.");
                result = false;
            }


            return result;
        }
    }
}