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
    public partial class EmployeeMasterListForm : PH.Platform.UI.CS.UI3.MasterListForm
    {
        public EmployeeMasterListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(EmployeeMasterSubForm).FullName;
        }

        public override void DataBind()
        {
            EmployeeHelper elyhelper = new EmployeeHelper();
            //Misc_EmployeeList me = new Misc_EmployeeList();
            this.DataContext = elyhelper.CurrentDataContext;
            this.BindingSource.DataSource = elyhelper.GetAllData(); 
            base.DataBind();
        }
        protected override void AddNewObject()
        {
            base.AddNewObject();
            (this.BindingSource.Current as PH.BasicInfo.BO.Employee).Expired = false;
        }
    }
}
