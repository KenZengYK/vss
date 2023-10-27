using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FIS2ReworkGmtAtEndPhaseForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public FIS2ReworkGmtAtEndPhaseForm()
        {
            InitializeComponent();
        }

        private void lue_Factory_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.lue_Factory.Text)) return;
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            List<string> WsList = db.FullInspectionHeaders.Where(dr => dr.Factory == this.lue_Factory.Text && dr.WorkShop != null).Select(dr => dr.WorkShop).Distinct().OrderBy(dr=>dr).ToList();
            lue_WorkShop.Properties.Items.Clear();
            lue_WorkShop.Properties.Items.AddRange(WsList);
        }

        private void sbut_OK_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {
                FIS2ReworkGmtAtEndPhaseReport rpt = new FIS2ReworkGmtAtEndPhaseReport(lue_Factory.Text, lue_WorkShop.Text, dateEdit1.Text);
                rpt.ShowPreview();
            }
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
    }
}