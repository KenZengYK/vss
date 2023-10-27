using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FIS2FtyFreqAtChkPtForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public FIS2FtyFreqAtChkPtForm()
        {
            InitializeComponent();
        }

        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {

        }

        public bool CheckData()
        {
            if (string.IsNullOrEmpty(this.lue_Factory.Text))
            {
                MessageBox.Show("Please Choose Fty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            //else if (string.IsNullOrEmpty(this.lue_WorkShop.Text))
            //{
            //    MessageBox.Show("Please Choose WorkShop", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}
            else if (string.IsNullOrEmpty(this.dateEdit1.Text))
            {
                MessageBox.Show("Please Choose Date", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            else
                return true;
        }

        private void sbut_OK_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {
                FIS2FtyFreqAtChkPtReport rpt = new FIS2FtyFreqAtChkPtReport(lue_Factory.Text, dateEdit1.Text);
                rpt.ShowPreview();
            }
        }
    }
}
