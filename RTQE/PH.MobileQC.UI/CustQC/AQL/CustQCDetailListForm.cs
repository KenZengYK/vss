using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQCDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.EditorTypeName = typeof(CustQCDetailDetailForm).FullName;
        }
    }
}
