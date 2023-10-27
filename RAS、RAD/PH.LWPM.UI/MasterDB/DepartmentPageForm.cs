using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentPageForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public DepartmentPageForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.tcDepartment.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
        }

        private void cbChoiceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.tcDepartment.SelectedTabPageIndex = this.cbChoiceType.SelectedIndex;
        }


    }
}
