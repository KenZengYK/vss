using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PC
{
    public partial class PCDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PCDetailDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            PCDetail obj = this.BindingSource.Current as PCDetail;
            if (obj != null)
            {
                obj.PCNO = ((this.ListForm as PCDetailListForm).BindingSource.Current as PCDetail).PCNO;
            }
            base.SaveCurrent();
        }
    }
}
