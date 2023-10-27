using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.SPC.UI
{
    public partial class InputStyleSortEditon : DevExpress.XtraEditors.XtraForm
    {
        public InputStyleSortEditon()
        {
            InitializeComponent();
        }
        public InputStyleSortEditon(int version)
        {
            InitializeComponent();

            if (version == 0) version = 1;
            this.Version = version;
            this.NewVersion = this.Version;
            this.editNew.EditValue = this.Version;
            this.editNew.Properties.MinValue = this.Version;
            this.editNew.Properties.MaxValue = 1000;

        }
        public int Version { get; set; }
        public int NewVersion { get; set; }

        private void btnDefault_Click(object sender, EventArgs e)
        {
            this.editNew.EditValue = this.Version;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {

            this.NewVersion = Convert.ToInt32(this.editNew.EditValue);
            if (this.NewVersion < 1)
            {
                MessageBox.Show("版本號不能小于 1.","提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            this.DialogResult = DialogResult.OK;
        }
    }
}