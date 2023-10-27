using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
//using PH.Platform.Misc.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;
using PH.BasicInfo.BO;
namespace PH.BasicInfo.UI.Organization
{
    public partial class OrganizationDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public OrganizationDetailForm()
        {
            InitializeComponent();
        }

        private void OrganizationDetailForm_Load(object sender, EventArgs e)
        {
            //PH.Platform.Misc.BO.PHPlatformMiscDataContext dc = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            PH.BasicInfo.BO.BasicInfoDataContext dc = ContextBuilder.CreateContext<BasicInfoDataContext>();
            var q = from ot in dc.OrganizationTypes
                    select new { ot.OrgType, ot.Description };
            this.orgTypeLookUpEdit.Properties.DataSource = q;
            this.orgTypeLookUpEdit.Properties.DisplayMember = "OrgType";
            this.orgTypeLookUpEdit.Properties.ValueMember = "OrgType";
        }


        private void OrganizationDetailForm_Enter(object sender, EventArgs e)
        {
            if (PH.BasicInfo.UI.Organization.ParaClass._sStatus.Equals("AddNew", StringComparison.OrdinalIgnoreCase))
            {
                this.pIDSpinEdit.Value = PH.BasicInfo.UI.Organization.ParaClass._lPID;
            }
        }

 
    }
}
