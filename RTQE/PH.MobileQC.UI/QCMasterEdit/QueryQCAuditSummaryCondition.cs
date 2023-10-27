using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MobileQC.BO;
using System.Linq;

namespace PH.MobileQC.UI.QCMasterEdit
{
    public partial class QueryQCAuditSummaryCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        public QueryQCAuditSummaryCondition()
        {
            InitializeComponent();
            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

            comboBoxEdit1.Properties.Items.Add(" ");
            List<string> AList = context.CustQCMasters.Where(dr => dr.Customer != null).OrderBy(dr => dr.Customer).Select(dr => dr.Customer).Distinct().ToList<string>();
            List<string> AListOrder = AList.OrderBy(p => p).ToList();

            comboBoxEdit1.Properties.Items.AddRange(AListOrder);
            
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(dateStart.Text) && !string.IsNullOrEmpty(dateDue.Text))
            {
                if (dateDue.DateTime < dateStart.DateTime) 
                {
                    MessageBox.Show("The end date cannot be less than the start date", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
            if (string.IsNullOrEmpty(this.comboBoxEdit2.Text)) return;
            if (comboBoxEdit2.SelectedIndex == 0)
            {
                QCAduditSummaryReport Rpt = new QCAduditSummaryReport(this.comboBoxEdit1.Text, this.dateStart.Text, this.dateDue.Text);
                Rpt.ShowPreview();
            }

            if (comboBoxEdit2.SelectedIndex == 1)
            {
                QCInspectionSummaryReport Rpt = new QCInspectionSummaryReport(this.comboBoxEdit1.Text, this.dateStart.Text, this.dateDue.Text);
                Rpt.ShowPreview();
            }

        }
    }
}