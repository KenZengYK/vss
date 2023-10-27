using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSContract
{
    public partial class HSContractHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        private PH.MR.BO.HSContractHeader _hsContractHeader
        {
            get
            {
                return this.BindingSource.Current as PH.MR.BO.HSContractHeader;
            }
        }

        public HSContractHeaderDetailForm()
        {
            InitializeComponent();
        }

        private void HSContractHeaderDetailForm_Load(object sender, EventArgs e)
        {
            if (_hsContractHeader != null && _hsContractHeader.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                _hsContractHeader.HSContractID = DateTime.Now.ToString("yyMMddHHmmss");
                _hsContractHeader.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                _hsContractHeader.CreateDate = DateTime.Now;
            }
            SetCtrlStatus();
        }

        public override void DataBind()
        {
            this.hsContractDetailListForm1.EditorTypeName = typeof(HSContractDetailDetailForm).FullName;
            this.hsContractDetailListForm1.DataSource = this._hsContractHeader.HSContractDetails;
            this.hsContractDetailListForm1.HSContractID = this._hsContractHeader.HSContractID;
            this.hsContractDetailListForm1.barBtnAddNew.Enabled = !(this._hsContractHeader.IsConfirm ?? false);
            this.barBtnEdit.Enabled = !(this._hsContractHeader.IsConfirm ?? false);
            this.barBtnDel.Enabled = !(this._hsContractHeader.IsConfirm ?? false);
            base.DataBind();
        }

        private void barBtnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MR.BO.HSContractHeader headerBO = this.BindingSource.Current as PH.MR.BO.HSContractHeader;
            if (headerBO != null && headerBO.BOWorkMode != PH.Platform.BO.Interface.WorkMode.New && !(headerBO.IsConfirm ?? false))
            {
                if (MessageBox.Show("你確定要Confirm當前記錄嗎?", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
            }
            headerBO.IsConfirm = true;
            this.DataContext.SubmitChanges();
            SetCtrlStatus();
        }


        private void SetCtrlStatus()
        {
            PH.MR.BO.HSContractHeader headerBO = this.BindingSource.Current as PH.MR.BO.HSContractHeader;
            if (headerBO.IsConfirm ?? false)
            {
                this.hScontractNOTextEdit.Enabled = false;
                this.isConfirmCheckEdit.Enabled = false;
                this.remarkMemoEdit.Enabled = false;
                this.hsContractDetailListForm1.barBtnAddNew.Enabled = false;
                this.barBtnEdit.Enabled = false;
                this.barBtnDel.Enabled = false;
            }
            this.isConfirmCheckEdit.Enabled = false;
            this.hSContractIDTextEdit.Enabled = false;
            this.createUserTextEdit.Enabled = false;
            this.createDateDateEdit.Enabled = false;
            this.alterUserTextEdit.Enabled = false;
            this.alterDateDateEdit.Enabled = false;
        }


    }
}
