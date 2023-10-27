using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class POConfirmListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POConfirmListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(POConfirmDetailForm).FullName;
        }
    }
}
