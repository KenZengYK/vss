using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class PaymentTermListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PaymentTermListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.BindingSource.DataSource = (DataContext as RWOSOPCDataContext).PaymentTerms.OrderBy(p => p.Code);
            this.EditorTypeName = typeof(PaymentTermDetailForm).FullName;
        }

    }
}
