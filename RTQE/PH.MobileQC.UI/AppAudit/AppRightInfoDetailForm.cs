using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class AppRightInfoDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public AppRightInfoDetailForm()
        {
            InitializeComponent();
        }


        private void AppRightInfoDetailForm_Load(object sender, EventArgs e)
        {
            InitBasicCtrlValues();
        }


        private void InitBasicCtrlValues()
        {
            PH.MobileQC.BO.MobileQCDataContext dcon = this.DataContext as PH.MobileQC.BO.MobileQCDataContext;
            this.aPPNameLookUpEdit.Properties.DataSource = dcon.QC_AppInfos.ToList();
            this.aPPNameLookUpEdit.Properties.DisplayMember = "AppName";
            this.aPPNameLookUpEdit.Properties.ValueMember = "AppName";
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
            PH.MobileQC.BO.QC_AppRightInfo currBO = this.BindingSource.Current as PH.MobileQC.BO.QC_AppRightInfo; 
            if (currBO != null && currBO.QC_QCUser != null)
            {
                frm.UserCode = currBO.QC_QCUser.UserCode;
            }
            if (frm.ShowDialog() == DialogResult.OK)
            {
                PH.MobileQC.BO.QC_AppRightInfo bo = this.BindingSource.Current as PH.MobileQC.BO.QC_AppRightInfo;
                bo.RoleCode = frm.SelectedRole.RoleCode;
            }
        }

        private void aPPNameLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            string appName = this.aPPNameLookUpEdit.EditValue == null ? "" : this.aPPNameLookUpEdit.EditValue.ToString();
            QC_AppRightInfo bo = this.BindingSource.Current as QC_AppRightInfo;
            PH.MobileQC.BO.MobileQCDataContext dcon = this.DataContext as PH.MobileQC.BO.MobileQCDataContext;
            this.activityNameLookUpEdit.Properties.DataSource = dcon.QC_AppActivityInfos.Where(p => p.AppName == appName).ToList();
            this.activityNameLookUpEdit.Properties.DisplayMember = "ActivityName";
            this.activityNameLookUpEdit.Properties.ValueMember = "ActivityName";
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
            PH.MobileQC.BO.QC_AppRightInfo bo = this.BindingSource.Current as PH.MobileQC.BO.QC_AppRightInfo;
            if (bo == null) return;
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.CreateDate = DateTime.Now;
            }

            PH.MobileQC.BO.QC_AppRightInfo updateBO = (PH.MobileQC.BO.QC_AppRightInfo)bo.CurrentDataContext
                .GetChangeSet().Updates.Where(p => ((PH.MobileQC.BO.QC_AppRightInfo)p).APPName == bo.APPName
                   && ((PH.MobileQC.BO.QC_AppRightInfo)p).ActivityName == bo.ActivityName).FirstOrDefault();

            if (updateBO != null)
            {
                bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.AlterDate = DateTime.Now;
            }
        }

    }
}
