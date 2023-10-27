using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Main.ActionLog
{
    public partial class ActionLogCompleteReasonForm : DevExpress.XtraEditors.XtraForm
    {
        public ActionLogCompleteReasonForm()
        {
            InitializeComponent();

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
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