using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class ConfirmAT3Form : XtraForm
    {
        public ConfirmAT3Form(DateTime? aT3)
        {
            InitializeComponent();
            _aT3 = aT3;
            this.eidtAT3.EditValue = _aT3;
        }
        DateTime? _aT3;

        public DateTime? aT3
        {
            get
            {
                return (this.eidtAT3.EditValue == null) ? (DateTime?)null : this.eidtAT3.DateTime;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (!this.aT3.HasValue)
            {
                MessageBox.Show("aT3 cannot be empty.");
                this.eidtAT3.Focus();
                return;
            }
            this.DialogResult = DialogResult.OK;
        }

    }
}
