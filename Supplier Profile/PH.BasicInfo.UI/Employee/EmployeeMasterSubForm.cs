using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.BasicInfo.BO;


namespace PH.BasicInfo.UI.Employee
{
    public partial class EmployeeMasterSubForm : PH.Platform.UI.CS.UI3.MasterSubForm
    {
        public EmployeeMasterSubForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //Misc_Employee cur = this.BindingSource.Current as PH.Platform.Misc.BO.Misc_Employee;
            PH.BasicInfo.BO.Employee cur = this.BindingSource.Current as PH.BasicInfo.BO.Employee;
            this.employeeSubListForm1.BindingSource.DataSource = cur.EmployeeUsers;
            this.employeeSubListForm1.AttachTypeName = typeof(EmployeeSubAttachForm).FullName;
            base.DataBind();
        }
    }
}
