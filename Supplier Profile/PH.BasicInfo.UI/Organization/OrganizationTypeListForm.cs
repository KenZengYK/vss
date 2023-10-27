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
using PH.BasicInfo.BO;
using PH.BasicInfo.BO.Helper;

namespace PH.BasicInfo.UI.Organization
{
    public partial class OrganizationTypeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public OrganizationTypeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(OrganizationTypeDetailForm).FullName;
            
        }

        public override void DataBind()
        {
            //Misc_OrganizationTypeList ot = new Misc_OrganizationTypeList();
            OrganizationTypeHelper othelper = new OrganizationTypeHelper();
            this.DataContext = othelper.CurrentDataContext;
            this.BindingSource.DataSource = othelper.GetAllData();
            base.DataBind();
        }
    }
}
