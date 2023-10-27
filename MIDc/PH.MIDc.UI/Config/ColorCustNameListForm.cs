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
    public partial class ColorCustNameListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ColorCustNameListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(ColorCustNameDetailForm).FullName;
        }

    }
}
