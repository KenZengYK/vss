using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.PO
{
    public partial class BuyerListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BuyerListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.Buyers;
            this.EditorTypeName = typeof(BuyerDetailForm).FullName;
            base.DataBind();
        }
    }
}
