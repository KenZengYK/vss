using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF
{
    public partial class MCPartDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MCPartDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            var obj = this.BindingSource.Current as BaseCode;
            obj.Type = "MCPart";
            base.SaveCurrent();
        }

    }
}
