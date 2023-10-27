using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI.SupplierQE.Elastic
{
    public partial class sInputItemCodeForm : DevExpress.XtraEditors.XtraForm
    {
        public sInputItemCodeForm()
        {
            InitializeComponent();
        }

        public string AuditStage
        {
            get { return this.txtAuditStage.Text.Trim(); }
        }

        public string Company
        {
            get { return this.txtCompany.Text.Trim(); }
        }

        public DateTime IDCreateDate
        {
            get { return this.txtIDCreateDate.DateTime; }
        }

        public string ItemCode
        {
            get { return this.txtItemCode.Text.Trim(); }
        }

        public string ColorCode
        {
            get { return this.txtColorCode.Text.Trim(); }
        }

        bool CheckInputData()
        {
            if (txtAuditStage.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input audit stage.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtAuditStage.Focus();
                return false;
            }

            if (txtCompany.Text.Trim().Length == 0)
            {
                MessageBox.Show("please input Company.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCompany.Focus();
                return false;
            }

            if (txtItemCode.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input Item Code.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtItemCode.Focus();
                return false;
            }

            if (txtColorCode.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input Color Code.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtColorCode.Focus();
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
    }
}