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
    public partial class EmployeeCostListForm : BaseCodeListForm
    {
        public EmployeeCostListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(EmployeeCostEditForm).FullName;

        }
    }
}
