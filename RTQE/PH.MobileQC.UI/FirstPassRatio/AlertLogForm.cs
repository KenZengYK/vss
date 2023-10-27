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
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class AlertLogForm : DevExpress.XtraEditors.XtraForm
    {
        FirstPass_Header CurrentRedQN;
        MobileQCDataContext db;

        public AlertLogForm(MobileQCDataContext ADB, FirstPass_Header ARedQN)
        {
            InitializeComponent();

            this.db = ADB;
            this.CurrentRedQN = ARedQN;

            this.DataBind();
        }

        void DataBind()
        {
           
           this.bsAlertLogHeader.DataSource = db.FirstPass_AlertLogHeaders.Where(p => p.HeaderOID == CurrentRedQN.OID);
          
        }

        private void btnAddAlertLog_Click(object sender, EventArgs e)
        {
            FirstPass_AlertLogHeader obj = this.bsAlertLogHeader.AddNew() as FirstPass_AlertLogHeader;
            obj.HeaderOID = this.CurrentRedQN.OID;
            //obj.LineCode = this.CurrentRedQN.LineCode;
            //obj.j_NO = this.CurrentRedQN.j_NO;
            //obj.J2_job = this.CurrentRedQN.J2_job;
            //obj.Rwo = this.CurrentRedQN.Rwo;
            //obj.Qn = this.CurrentRedQN.Qn;
            //obj.Bcolor = this.CurrentRedQN.Bcolor;

            obj.AcitonID = GetNewActinID();
            obj.StartDate = DateTime.Now;
        }

        string GetNewActinID()
        {
            string Str = DateTime.Now.ToString("yyMM-");
            try
            {
                string MaxID = db.FirstPass_AlertLogHeaders.Where(p => p.AcitonID.StartsWith(Str)).Select(p => p.AcitonID).Max();
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
            MessageBox.Show("保存成功！");
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.bsAlertLogHeader.Current == null)
            {
                return;
            }

            this.gridAlertLogDetail.AddNewRow();
            this.gridAlertLogDetail.UpdateCurrentRow();

            FirstPass_AlertLogDetail detail = this.gridAlertLogDetail.GetRow(this.gridAlertLogDetail.FocusedRowHandle) as FirstPass_AlertLogDetail;
            detail.Sender = PH.Platform.Common.SysParamHelper.Instance.UserID;
            detail.StartFollowDate = DateTime.Now;
            detail.FollowCount = ((this.bsAlertLogHeader.Current as FirstPass_AlertLogHeader).FirstPass_AlertLogDetails.Select(p => p.FollowCount).Max() ?? 0) + 1;
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
            MessageBox.Show("保存成功！");
        }

        private void repositoryItemButtonEdit_ItemNo_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            AlertLogCategoryChoiceForm frmChoiceItem = new AlertLogCategoryChoiceForm(db);
            if (frmChoiceItem.ShowDialog() == DialogResult.OK)
            {
                FirstPass_AlertLogHeader obj = this.bsAlertLogHeader.Current as FirstPass_AlertLogHeader;
                obj.ItemNo = frmChoiceItem.SelectItem.Code;
                obj.ItemSubject = frmChoiceItem.SelectItem.Description;
                this.gridAlertLogHeader.HideEditor();
            }
        }

        private void btnSendEmail_Click(object sender, EventArgs e)
        {
            FirstPass_AlertLogDetail detail = this.gridAlertLogDetail.GetRow(this.gridAlertLogDetail.FocusedRowHandle) as FirstPass_AlertLogDetail;

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