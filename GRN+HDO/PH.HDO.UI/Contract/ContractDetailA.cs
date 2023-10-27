using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class ContractDetailA : ParentChildForm
    {
        public ContractDetailA()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            ContractInfo ctrinfo = this.BindingSource.Current as ContractInfo;
            //this.contractItemList1 = typeof(AttachItemForm).FullName;
            //this.contractItemList1.BindingSource.DataSource = null;
            //this.contractItemList1.BindingSource.DataSource = ctrinfo.ContractInfoDetails.ToList();
            this.contractItemMaitain1.BindingSource.DataSource = null;
            this.contractItemMaitain1.BindingSource.DataSource = ctrinfo.ContractItems.ToList();
            SetDisable();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();           
            SetDisable();
                
        }

        private void SetDisable()
        {
            craIdTextEdit.Enabled = false;

            createByTextEdit.Enabled = false;
            createdDateEdit.Enabled = false;
            updateByTextEdit.Enabled = false;
            updatedDateEdit.Enabled = false;
        }

        protected override void SaveCurrent()
        {
            ContractInfo ctrinfo = this.BindingSource.Current as ContractInfo;
            if (IsNew)
            {
                ctrinfo.CreateBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                ctrinfo.Created = DateTime.Now;
            }
            else if (IsEditting)
            {
                ctrinfo.UpdateBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                ctrinfo.Updated= DateTime.Now;
            
            }
            base.SaveCurrent();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            this.barBtnDel.Enabled = false;
        }

        private void itemNoTextEdit_EditValueChanged(object sender, EventArgs e)
        {

        }
    }
}
