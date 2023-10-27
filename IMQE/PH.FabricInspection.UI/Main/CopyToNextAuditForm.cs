using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI.Main
{
    public partial class CopyToNextAuditForm : DevExpress.XtraEditors.XtraForm
    {
        public CopyToNextAuditForm()
        {
            InitializeComponent();
        }

        public CopyToNextAuditForm(int? AAuditNo, string AAuditStageFrom)
            : this()
        {
            txtAuditNo.Text = AAuditNo.ToString();
            txtCopyFrom.Text = AAuditStageFrom;

            txtCopyTo.SelectedIndex = txtCopyFrom.SelectedIndex + 1;
        }

        public string AuditStageTo
        {
            get { return txtCopyTo.Text; }
        }
    }
}