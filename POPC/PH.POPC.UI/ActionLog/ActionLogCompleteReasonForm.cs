using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI.ActionLog
{
    public partial class ActionLogCompleteReasonForm : DevExpress.XtraEditors.XtraForm
    {
        public ActionLogCompleteReasonForm()
        {
            InitializeComponent();

            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            var lists = db.ActionLogCompleteReasons.OrderBy(p => p.SeqNo);
            bsActionLogCompleteReason.DataSource = lists;
        }

        public string CompleteReason
        {
            get
            {
                ActionLogCompleteReason obj = this.bsActionLogCompleteReason.Current as ActionLogCompleteReason;
                if (obj == null) return "";
                return obj.Remark;
            }
        }

        public int CompleteReasonOID
        {
            get
            {
                ActionLogCompleteReason obj = this.bsActionLogCompleteReason.Current as ActionLogCompleteReason;
                if (obj == null) return -19;
                return obj.OID;
            }
        }


        private void ActionLogCompleteReasonForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }
    }
}