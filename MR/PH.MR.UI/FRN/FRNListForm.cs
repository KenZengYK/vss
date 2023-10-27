using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.FRN
{
    public partial class FRNListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public FRNListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //this.EditorTypeName = typeof(FRNDetailForm).FullName;
            base.DataBind();
        }
    }
}
