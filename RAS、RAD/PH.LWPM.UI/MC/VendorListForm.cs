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
namespace PH.LWPM.UI.MC
{
    public partial class VendorListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public VendorListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.Vendors;
            this.EditorTypeName = typeof(VendorDetailForm).FullName;

            base.DataBind();
        }
    }
}
