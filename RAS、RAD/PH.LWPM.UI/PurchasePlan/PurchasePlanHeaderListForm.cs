using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PurchasePlan
{
    public partial class PurchasePlanHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PurchasePlanHeaderListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).PurchasePlanHeaders;
            this.EditorTypeName = typeof(PurchasePlanHeaderDetailForm).FullName;
        }
    }
}
