using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class POStatusDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public POStatusDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            if (obj != null)
            {
                obj.Type = "POStatus";
            }
            base.SaveCurrent();
        }
    }
}
