using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class RoleUserListForm : PH.Platform.UI.CS.UI2.ListForm
    { 
        public RoleUserListForm()
        {
            InitializeComponent();
            this.objListGridView.OptionsView.ColumnAutoWidth = true;
        }
 

    }
}
