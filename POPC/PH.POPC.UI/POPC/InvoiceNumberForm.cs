using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;


namespace PH.POPC.UI.POPC
{
    public partial class InvoiceNumberForm : DevExpress.XtraEditors.XtraForm
    {
        public InvoiceNumberForm()
        {
            InitializeComponent();
        }

        public int InvNumber { get { return Convert.ToInt32(this.spinEdit1.Value); } }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (NewLots <= OldLots)
            //{
            //    MessageBox.Show("New Lots must greater than Current Lots!", "Warning");
            //    return;
            //}

            this.DialogResult = DialogResult.OK;
        }
    }
}