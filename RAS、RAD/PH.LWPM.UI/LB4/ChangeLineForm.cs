using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB4
{
    public partial class ChangeLineForm : DevExpress.XtraEditors.XtraForm
    {
        private ChangeLineForm()
        {
            InitializeComponent();
        }

        public ChangeLineForm(WPMaster AWPMaster)
            : this()
        {
            this.lbFactory.Text = AWPMaster.Factory.Trim();
            this.lbWorkshop.Text = AWPMaster.Location.Trim();
            this.lbColor.Text = AWPMaster.Bcolor.Trim();
            this.lbLine.Text = AWPMaster.LineCode.Trim();
            this.lbQN.Text = string.Format("{0} - {1} - {2}", AWPMaster.J2_job.Trim(), AWPMaster.Rwo.Trim(), AWPMaster.Qn.Trim());

            this.txtLine.Focus();
        }

        public string ChangeLine
        {
            get
            {
                return this.txtLine.Text.Trim();
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.txtLine.Text))
            {
                MessageBox.Show("Please input change line.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.txtLine.Focus();
                this.DialogResult = DialogResult.None;
                return;
            }
        }
    }
}