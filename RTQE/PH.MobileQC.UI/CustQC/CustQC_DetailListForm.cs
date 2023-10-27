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
    public partial class CustQC_DetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string DefectType { get; set; }
        public CustQC_DetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(CustQC_DetailDetailForm).FullName;
        }
    }
}
