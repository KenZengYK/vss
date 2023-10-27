using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.MIDc.UI.Weight
{
    public partial class WipWeightReportForm : DevExpress.XtraEditors.XtraForm
    {
        public WipWeightReportForm(bool isStyle)
        {
            InitializeComponent();

            this.jobWipWeightReport1.IsStyle = isStyle;
        }
        public string Param
        {
            get { return this.jobWipWeightReport1.GetParameter(); }
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.jobWipWeightReport1.IsEmptyCondition)
            {
                MessageBox.Show("Please input a condition at least!","Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            this.DialogResult = DialogResult.OK;

        }
    }
}