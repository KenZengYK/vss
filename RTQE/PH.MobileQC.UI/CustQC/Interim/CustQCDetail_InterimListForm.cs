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
    public partial class CustQCDetail_InterimListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQCDetail_InterimListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.EditorTypeName = typeof(CustQCDetail_InterimDetailForm).FullName;
        }
    }
}
