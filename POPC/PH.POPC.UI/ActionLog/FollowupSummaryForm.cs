using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class FollowupSummaryForm : DevExpress.XtraEditors.XtraForm
    {
        public FollowupSummaryForm(ActionLogDetail AActionLogDetail)
        {
            InitializeComponent();
            txtFollowupSummary.Text = AActionLogDetail.FollowSummary;
        }

        public string FollowUpSummary
        {
            get
            {
                return this.txtFollowupSummary.Text;
            }
        }
    }
}