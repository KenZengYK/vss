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
    public partial class MCGroupListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MCGroupListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.BaseCodes.Where(p => p.Type == "McGroup");
            this.EditorTypeName = typeof(MCGroupDetailForm).FullName;

            base.DataBind();
        }

    }
}
