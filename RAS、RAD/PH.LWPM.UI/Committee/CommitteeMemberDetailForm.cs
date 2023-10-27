using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.Committee
{
    public partial class CommitteMemberDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CommitteMemberDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            if ((this.PrevForm.PrevForm as CommitteeListForm).Param == "Review")
            {
                barBtnAddNew.Visibility = BarItemVisibility.Never;
                barBtnDel.Visibility = BarItemVisibility.Never;
                barBtnEdit.Visibility = BarItemVisibility.Never;
                barBtnSave.Visibility = BarItemVisibility.Never;
                barBtnSaveAndReturn.Visibility = BarItemVisibility.Never;
                barBtnCancel.Visibility = BarItemVisibility.Never;
            }
        }

        private void txtEmployeeID_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectEmployeeForm frmSelectEmployee = new SelectEmployeeForm();
            if (frmSelectEmployee.ShowDialog() == DialogResult.OK)
            {
                CommitteeMember obj = this.BindingSource.Current as CommitteeMember;
                obj.EmployeeID = frmSelectEmployee.SelectEmployee.Id;
            }
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.txtNameEN.Properties.ReadOnly = true;
            this.txtNameCN.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            if (!string.IsNullOrEmpty((this.ListForm as CommitteeMemberListForm).CommitteeOID))
            {
                CommitteeMember obj = this.BindingSource.Current as CommitteeMember;
                if (obj != null)
                {
                    obj.CommitteeOID = Convert.ToInt64((this.ListForm as CommitteeMemberListForm).CommitteeOID);
                }
            }
            base.SaveCurrent();

        }

    }
}
