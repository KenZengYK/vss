using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentEditForm : BaseCodeEditForm
    {
        public DepartmentEditForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.edtHSCode.Properties.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "MCPart");
            this.edtHSCode.Properties.DisplayMember = "Description";
            this.edtHSCode.Properties.ValueMember = "Code";

        }
    }
}
