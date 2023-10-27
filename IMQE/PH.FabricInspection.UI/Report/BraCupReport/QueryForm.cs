using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class QueryForm : DevExpress.XtraEditors.XtraForm
    {
        public QueryForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// �Ƿ���Ҫ��ӡiAudit Form - Bra Cup ������
        /// </summary>
        public bool NeedPrintBraCupiAuditFormMainReport
        {
            get
            {
                return this.checkedListBoxControl1.Items[0].CheckState == CheckState.Checked;
            }
        }

        /// <summary>
        /// �Ƿ���Ҫ��ӡiAudit Form - Bra Cup �õ���Ϣ����
        /// </summary>
        public bool NeedPrintBraCupiAuditFormDefectReport
        {
            get
            {
                return this.checkedListBoxControl1.Items[1].CheckState == CheckState.Checked;
            }
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (this.checkedListBoxControl1.Items[0].CheckState != CheckState.Checked &&
                this.checkedListBoxControl1.Items[1].CheckState != CheckState.Checked)
            {
                MessageBox.Show("Please choose the report type to print", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.DialogResult = DialogResult.None;
                return;
            }
            this.DialogResult = DialogResult.OK;
        }
    }
}