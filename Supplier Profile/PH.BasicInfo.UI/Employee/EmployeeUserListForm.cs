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
using PH.BasicInfo.BO.Helper;

namespace PH.BasicInfo.UI.Employee
{
    public partial class EmployeeUserListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public EmployeeUserListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(EmployeeUserDetailForm).FullName;
        }

        public override void DataBind()
        {
            //PH.Platform.Misc.BO.PHPlatformMiscDataContext contexts = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            EmployeeUserHelper eluhelper = new EmployeeUserHelper();
            this.DataContext = eluhelper.CurrentDataContext;
            this.DataSource = eluhelper.GetAllData();
            base.DataBind();
        }
    }
}
