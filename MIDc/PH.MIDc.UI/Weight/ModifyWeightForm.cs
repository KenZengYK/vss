using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ModifyWeightForm : DevExpress.XtraEditors.XtraForm
    {
        public ModifyWeightForm(WeightAction action, string category, int seq, string tName, string hscode)
        {
            InitializeComponent();

            this._tName = tName;
            this._hscode = hscode;
            this._seq = seq;
            this._action = action;
            this._category = category;

            InitValue();
        }

        private WeightAction _action;
        private string _category;

        private string _tName;
        private string _hscode;
        private int _seq;

        private void InitValue()
        {
            this.Text =string.Format("{0} {1}", this._action , _category);
            this.groupControl1.Text = _category;

            this.edSeq.EditValue = this._seq;
            this.edName.Text = _tName;
            this.edHSCode.Text = _hscode;

            this.btnOK.Text = string.Format("{0}", this._action);

            this.edName.Properties.ReadOnly = this.edHSCode.Properties.ReadOnly = _action == WeightAction.Remove;

        }


        public int Seq { get { return Convert.ToInt32(this.edSeq.EditValue); } }
        public string TName { get { return this.edName.Text; } }
        public string HSCode { get { return this.edHSCode.Text; } }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.TName))
            {
                MessageBox.Show(string.Format("{0} Name cannot be empty!", _category), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edName.Focus();
                return;
            }
            if (string.IsNullOrEmpty(this.HSCode))
            {
                MessageBox.Show(string.Format("{0} HS Code cannot be empty!", _category), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edHSCode.Focus();
                return;
            }

            this.DialogResult = DialogResult.OK;
        }
    }
}