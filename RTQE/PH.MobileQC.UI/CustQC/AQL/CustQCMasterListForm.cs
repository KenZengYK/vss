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
    public partial class CustQCMasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQCMasterListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(CustQCMasterDetailForm).FullName;
        }

        public override void DataBind()
        {
            base.DataBind();

            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;  
            this.BindingSource.DataSource = context.CustQCMasters;

    

        }

    }
}
