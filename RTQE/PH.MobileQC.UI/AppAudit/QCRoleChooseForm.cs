using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class QCRoleChooseForm : Form
    {
        public QC_QCRole SelectedRole
        {
            get;
            set;
        }

        public string UserCode
        {
            get;
            set;
        }

        public QCRoleChooseForm()
        {
            InitializeComponent();
        }

        private void QCRoleChooseForm_Load(object sender, EventArgs e)
        {
            DataBind();
        }

        private void DataBind()
        {
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            if (this.UserCode == null || this.UserCode.Trim() == "")
            {
                this.bindingSource_QCRoles.DataSource = dcon.QC_QCRoles;
            }
            else
            {
                List<QC_QCRole> roles =(from val1 in dcon.QC_RoleUsers
                                           join val2 in dcon.QC_QCRoles on val1.RoleCode equals  val2.RoleCode
                                           where val1.UserCode==this.UserCode
                                           select val2 ).ToList();

                this.bindingSource_QCRoles.DataSource = roles;
            }

        }

        private void gridView_QCRoles_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            this.SelectedRole = this.bindingSource_QCRoles.Current as QC_QCRole;
        }



    }
}
