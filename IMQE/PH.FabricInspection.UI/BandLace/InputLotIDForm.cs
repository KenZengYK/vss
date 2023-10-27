using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI.BandLace
{
    public partial class InputLotIDForm : DevExpress.XtraEditors.XtraForm
    {
        public InputLotIDForm()
        {
            InitializeComponent();
        }

        public string Company
        {
            get { return this.txtCompany.Text.Trim(); }
        }

        public string LotID
        {
            get { return this.txtLotID.Text.Trim(); }
        }

        public string AuditStage
        {
            get { return this.txtAuditStage.Text.Trim(); }
        }

        bool CheckInputData()
        {
            if (txtCompany.Text.Trim().Length == 0)
            {
                MessageBox.Show("please input Company.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCompany.Focus();
                return false;
            }

            if (txtLotID.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input Item id#.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtLotID.Focus();
                return false;
            }

            if (txtAuditStage.Text.Trim().Length == 0)
            {
                MessageBox.Show(this, "please input audit stage.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtAuditStage.Focus();
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