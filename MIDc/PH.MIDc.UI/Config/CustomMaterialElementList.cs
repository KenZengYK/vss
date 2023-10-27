using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.MIDc.UI
{
    public partial class CustomMaterialElementList : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustomMaterialElementList()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(CustomMaterialElementDetail).FullName;
            base.DataBind();
        }
    }
}
