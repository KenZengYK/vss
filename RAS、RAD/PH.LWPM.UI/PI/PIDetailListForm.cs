using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.PI
{
    public partial class PIDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PIDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(PIDetailDetailForm).FullName;
            base.DataBind();
        }
    }
}
