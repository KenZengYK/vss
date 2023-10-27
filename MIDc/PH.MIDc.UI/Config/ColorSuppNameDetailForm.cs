using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI.Config
{
    public partial class ColorSuppNameDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ColorSuppNameDetailForm()
        {
            InitializeComponent();
        }


        protected override void SaveCurrent()
        {
            ColorSuppCustName obj = this.BindingSource.Current as ColorSuppCustName;
            obj.Flag = "Supp";
            base.SaveCurrent();
        }
    }
}
