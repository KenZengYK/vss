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
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Employee
{
    public partial class EmployeeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public EmployeeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(EmployeeDetailForm).FullName;
        }

        public override void DataBind()
        {
            EmployeeHelper elyhelper =new EmployeeHelper();
            //PH..PHPlatformMiscDataContext contexts = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.DataContext = elyhelper.CurrentDataContext;
            this.DataSource = elyhelper.GetAllData();
            base.DataBind();
        }

    }
}
