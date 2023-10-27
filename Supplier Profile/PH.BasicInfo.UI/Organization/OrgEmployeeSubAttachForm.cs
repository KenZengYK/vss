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
using PH.Platform.UI.CS.UI3;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Organization
{
    public partial class OrgEmployeeSubAttachForm : PH.Platform.UI.CS.UI3.SubAttachForm
    {
        public OrgEmployeeSubAttachForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //this.BindingSource.DataSource = ((this.PrevForm as MasterSubForm).BindingSource.Current as Misc_Organization).GetNotAttachEmployee();
            this.BindingSource.DataSource = ((this.PrevForm as MasterSubForm).BindingSource.Current as PH.BasicInfo.BO.Organization).GetNotAttachEmployee();
            base.DataBind();
        }
    }
}
