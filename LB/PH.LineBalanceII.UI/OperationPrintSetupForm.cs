using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.LineBalanceII.UI
{
    public partial class OperationPrintSetupForm : DevExpress.XtraEditors.XtraForm
    {

        public string Line
        {
            get { return this.txtLine.Text; }
        }

        public string Workshiop
        {
            get { return this.txtWorkshop.Text; }
        }

        public OperationPrintSetupForm()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(this.txtLine.Text) && string.IsNullOrEmpty(this.txtWorkshop.Text))
            //{
            //    MessageBox.Show("Please input line or workshop.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //    return;
            //}

            this.DialogResult = DialogResult.OK;
        }
    }
}