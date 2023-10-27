using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI.Elastic
{
    public partial class InputPOForm : DevExpress.XtraEditors.XtraForm
    {
        public InputPOForm()
        {
            InitializeComponent();
        }

        public string Company
        {
            get { return this.txtCompany.Text.Trim(); }
        }

        public string AuditStage
        {
            get { return this.txtAuditStage.Text.Trim(); }
        }

        public string PONo
        {
            get { return this.txtPONo.Text.Trim(); }
        }

        public DateTime IDCreateDate
        {
            get { return this.txtIDCreateDate.DateTime.Date; }
        }

        bool CheckInputData()
        {
            if (txtCompany.Text.Trim().Length == 0)
            {
                MessageBox.Show("please input Company.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCompany.Focus();
                return false;
            }

            if (txtAuditStage.Text.Trim().Length == 0)
            {
                MessageBox.Show("please input audit stage.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtAuditStage.Focus();
                return false;
            }

            if (txtPONo.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input PO#.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtPONo.Focus();
                return false;
            }

            if (txtIDCreateDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show(this, "please input id create date.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtIDCreateDate.Focus();
                return false;
            }
            return true;

        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (CheckInputData())
            {
                this.DialogResult = DialogResult.OK;
            }
        }

        private void InputPOForm_Load(object sender, EventArgs e)
        {

        }
    }
}