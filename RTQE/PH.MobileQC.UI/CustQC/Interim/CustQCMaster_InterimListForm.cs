using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCMaster_InterimListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQCMaster_InterimListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).CustQCMaster_Interims;

            this.EditorTypeName = typeof(CustQCMaster_InterimDetailForm).FullName;

        }

    }
}
