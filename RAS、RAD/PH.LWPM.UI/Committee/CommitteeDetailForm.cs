using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.Committee
{
    public partial class CommitteeDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public CommitteeDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.committeeMemberListForm1.BindingSource.DataSource = (this.BindingSource.Current as PH.LWPM.BO.Committee).CommitteeMembers.OrderBy(p => p.SeqNo);

            if ((this.ListForm as CommitteeListForm).Param == "Review")
            {
                barBtnAddNew.Visibility = BarItemVisibility.Never;
                barBtnDel.Visibility = BarItemVisibility.Never;
                barBtnEdit.Visibility = BarItemVisibility.Never;
                barBtnSave.Visibility = BarItemVisibility.Never;
                barBtnSaveAndReturn.Visibility = BarItemVisibility.Never;
                barBtnCancel.Visibility = BarItemVisibility.Never;
            }
        }
    }
}
