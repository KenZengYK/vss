using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class RoleUserDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public RoleUserDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            disableCtrls();
        }


        private void disableCtrls()
        {
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
        }

        private void roleCodeButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            QCRoleChooseForm frm = new QCRoleChooseForm();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                PH.MobileQC.BO.QC_RoleUser bo = this.BindingSource.Current as PH.MobileQC.BO.QC_RoleUser;
                bo.RoleCode = frm.SelectedRole.RoleCode;
            }
        }

        protected override void OnClickSave()
        {
            RecordBasicInfo();
            base.OnClickSave();
        }

        protected override void OnClickSaveAndReturn()
        {
            RecordBasicInfo();
            base.OnClickSaveAndReturn();
        }

        private void RecordBasicInfo()
        {
            this.BindingSource.EndEdit();
            PH.MobileQC.BO.QC_RoleUser bo = this.BindingSource.Current as PH.MobileQC.BO.QC_RoleUser;
            if (bo == null) return;
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.CreateDate = DateTime.Now;
            }

            PH.MobileQC.BO.QC_RoleUser updateBO = (PH.MobileQC.BO.QC_RoleUser)bo.CurrentDataContext.GetChangeSet()
                .Updates.Where(p => ((PH.MobileQC.BO.QC_RoleUser)p).UserCode == bo.UserCode
                    && ((PH.MobileQC.BO.QC_RoleUser)p).RoleCode == bo.RoleCode).FirstOrDefault();

            if (updateBO != null)
            {
                bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.AlterDate = DateTime.Now;
            }
        }
 

    }
}
