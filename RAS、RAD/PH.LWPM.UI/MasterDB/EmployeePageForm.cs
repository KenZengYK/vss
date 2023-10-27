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
    public partial class EmployeePageForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public EmployeePageForm()
        {
            InitializeComponent();

        }

        public override void DataBind()
        {
            base.DataBind();
            this.tcEmployee.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this.frmGrade.colSortID.Caption = "Grading";
        }

        private void cbChoiceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.tcEmployee.SelectedTabPageIndex = this.cbChoiceType.SelectedIndex;
        }


    }
}
