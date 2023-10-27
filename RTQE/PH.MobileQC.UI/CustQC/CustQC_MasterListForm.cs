using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQC_MasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQC_MasterListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).CustQC_Masters;

            this.EditorTypeName = typeof(CustQC_MasterDetailForm).FullName;
        }
    }
}
