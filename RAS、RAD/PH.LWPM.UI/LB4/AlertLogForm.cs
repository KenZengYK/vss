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
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.LWPM.UI.LB4
{
    public partial class AlertLogForm : DevExpress.XtraEditors.XtraForm
    {
        RedQN CurrentRedQN;
        RAPLQDataContext db;

        public AlertLogForm(RAPLQDataContext ADB, RedQN ARedQN)
        {
            InitializeComponent();

            this.db = ADB;
            this.CurrentRedQN = ARedQN;

            this.DataBind();
        }

        void DataBind()
        {
            this.bsAlertLogHeader.DataSource = db.AlertLogHeaders.Where(p => p.Factory == CurrentRedQN.Factory && p.LineCode == CurrentRedQN.LineCode &&
                p.j_NO == CurrentRedQN.j_NO && p.J2_job == CurrentRedQN.J2_job && p.Rwo == CurrentRedQN.Rwo && p.Qn == CurrentRedQN.Qn && p.Bcolor == CurrentRedQN.Bcolor);
        }

        private void btnAddAlertLog_Click(object sender, EventArgs e)
        {
            AlertLogHeader obj = this.bsAlertLogHeader.AddNew() as AlertLogHeader;
            obj.Factory = this.CurrentRedQN.Factory;
            obj.LineCode = this.CurrentRedQN.LineCode;
            obj.j_NO = this.CurrentRedQN.j_NO;
            obj.J2_job = this.CurrentRedQN.J2_job;
            obj.Rwo = this.CurrentRedQN.Rwo;
            obj.Qn = this.CurrentRedQN.Qn;
            obj.Bcolor = this.CurrentRedQN.Bcolor;

            obj.AcitonID = GetNewActinID();
            obj.StartDate = DateTime.Now;
        }

        string GetNewActinID()
        {
            string Str = DateTime.Now.ToString("yyMM-");
            try
            {
                string MaxID = db.AlertLogHeaders.Where(p => p.AcitonID.StartsWith(Str)).Select(p => p.AcitonID).Max();
                int NewActionID = int.Parse(MaxID.Replace(Str, "")) + 1;
                return Str + NewActionID.ToString().PadLeft(3, '0');
            }
            catch
            {
                return Str + "001";
            }
        }

        private void btnSaveAlertLog_Click(object sender, EventArgs e)
        {
            this.gridAlertLogHeader.PostEditor();
            this.bsAlertLogHeader.EndEdit();
            db.SubmitChanges();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.bsAlertLogHeader.Current == null)
            {
                return;
            }

            this.gridAlertLogDetail.AddNewRow();
            this.gridAlertLogDetail.UpdateCurrentRow();

            AlertLogDetail detail = this.gridAlertLogDetail.GetRow(this.gridAlertLogDetail.FocusedRowHandle) as AlertLogDetail;
            detail.Sender = PH.Platform.Common.SysParamHelper.Instance.UserID;
            detail.StartFollowDate = DateTime.Now;
            detail.FollowCount = ((this.bsAlertLogHeader.Current as AlertLogHeader).AlertLogDetails.Select(p => p.FollowCount).Max() ?? 0) + 1;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            this.gridAlertLogDetail.DeleteRow(this.gridAlertLogDetail.FocusedRowHandle);
            db.SubmitChanges();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            this.bsAlertLogHeader.EndEdit();
            this.gridAlertLogHeader.PostEditor();
            this.gridAlertLogDetail.PostEditor();
            db.SubmitChanges();
        }

        private void repositoryItemButtonEdit_ItemNo_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            AlertLogCategoryChoiceForm frmChoiceItem = new AlertLogCategoryChoiceForm(db);
            if (frmChoiceItem.ShowDialog() == DialogResult.OK)
            {
                AlertLogHeader obj = this.bsAlertLogHeader.Current as AlertLogHeader;
                obj.ItemNo = frmChoiceItem.SelectItem.Code;
                obj.ItemSubject = frmChoiceItem.SelectItem.Description;
                this.gridAlertLogHeader.HideEditor();
            }
        }

        private void btnSendEmail_Click(object sender, EventArgs e)
        {
            AlertLogDetail detail = this.gridAlertLogDetail.GetRow(this.gridAlertLogDetail.FocusedRowHandle) as AlertLogDetail;

            if (detail == null)
            {
                return;
            }

            SendEmailForm frmSendEMail = new SendEmailForm(db, detail, CurrentRedQN);
            frmSendEMail.ShowDialog();
        }

        private void repositoryItemCheckEdit_IteCompleted_CheckedChanged(object sender, EventArgs e)
        {
            this.gridAlertLogHeader.PostEditor();
        }

    }
}