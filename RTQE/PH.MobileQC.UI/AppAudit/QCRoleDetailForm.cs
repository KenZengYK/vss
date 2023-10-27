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
    public partial class QCRoleDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public QCRoleDetailForm()
        {
            InitializeComponent();
        }

        private void disableCtrls()
        {
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            disableCtrls();
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
            PH.MobileQC.BO.QC_QCRole bo = this.BindingSource.Current as PH.MobileQC.BO.QC_QCRole;
            if (bo == null) return;
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.CreateDate = DateTime.Now;
            }

            PH.MobileQC.BO.QC_QCRole updateBO = (PH.MobileQC.BO.QC_QCRole)bo.CurrentDataContext.GetChangeSet().Updates.Where(p => ((PH.MobileQC.BO.QC_QCRole)p).RoleCode == bo.RoleCode).FirstOrDefault();

            if (updateBO != null)
            {
                bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.AlterDate = DateTime.Now;
            } 
        }

    }
}
