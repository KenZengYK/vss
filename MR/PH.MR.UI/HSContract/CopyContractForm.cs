using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MR.BO;

namespace PH.MR.UI.HSContract
{
    public partial class CopyContractForm : DevExpress.XtraEditors.XtraForm
    {
        public CopyContractForm(HSContractHeader AHSContractHeader)
        {
            InitializeComponent();

            lbHint.Text = string.Format(lbHint.Text, AHSContractHeader.HScontractNO);
        }

        public string NewContractNo
        {
            get
            {
                return txtNewContractNo.Text;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(NewContractNo))
            {
                MessageBox.Show("請輸入新合同號", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNewContractNo.Focus();
                return;
            }

            this.DialogResult = DialogResult.OK;
        }
    }
}