using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.Platform.Common;
using PH.Platform.Misc.BO;

namespace PH.POPC.UI.POPC
{
    public partial class POPCInAdvanceAddLogForm : DevExpress.XtraEditors.XtraForm
    {
        public POPCInAdvanceAddLogForm()
        {
            InitializeComponent();

            txtCreateDate.DateTime = DateTime.Now.Date;
            txtTargetFinishDate.DateTime = DateTime.Now.Date.AddDays(42);
            txtCoordinator.Text = SysParamHelper.Instance.UserID;

            txtStage.Properties.Items.Clear();
            PHPlatformMiscDataContext db = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var InAdvanceStageList = db.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.InAdvanceStage").Select(p => p.DataName).ToList();
            InAdvanceStageList.Insert(0, "");
            txtStage.Properties.Items.AddRange(InAdvanceStageList);
            txtStage.SelectedIndex = 1;
        }

        public string GetNewLogNo()
        {
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            string dd = DateTime.Now.ToString("yyMMdd");
            string MaxLogNo = db.POInAdvances.Where(p => p.LogNo.StartsWith(dd)).Select(p => p.LogNo).Max();

            if (string.IsNullOrEmpty(MaxLogNo))
            {
                return dd + "01";
            }

            return (Convert.ToInt32(MaxLogNo) + 1).ToString();
        }

        bool CheckInputData()
        {
            if (Convert.ToInt32(txtLine.EditValue) <= 0)
            {
                MessageBox.Show("The line must be more then 0", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (CheckInputData())
            {
                this.DialogResult = DialogResult.OK;
            }
        }

        public DateTime CreateDate { get { return this.txtCreateDate.DateTime; } }
        public DateTime TargetFinishDate { get { return this.txtTargetFinishDate.DateTime; } }
        public string Coordinator { get { return this.txtCoordinator.Text; } }
        public int LineCount { get { return Convert.ToInt32(this.txtLine.EditValue); } }
        public string Stage { get { return this.txtStage.Text; } }

    }
}